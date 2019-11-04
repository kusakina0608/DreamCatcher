(function () {
    var Message;
    Message = function (arg) {
        this.text = arg.text, this.message_side = arg.message_side;

        this.draw = function (_this) {
            return function () {
                var $message;
                $message = $($('.message_template').clone().html());
                $message.addClass(_this.message_side).find('.text').html(_this.text);
                $('.messages').append($message);
                return setTimeout(function () {
                    return $message.addClass('appeared');
                }, 0);
            };
        }(this);
        return this;
    };

    $(function () {
        var getMessageText, message_side, sendMessage, reply;
        message_side = 'right';

        reply = function(){
            if(httpRequest.readyState==4 &&httpRequest.status == 200) {
                var responseText = httpRequest.responseText;
                //message_side = 'left';
                sendMessage(responseText.trim());
                console.log(responseText.trim());
            }
        }

        getMessageText = function () {
            var $message_input;
            $message_input = $('.message_input');
            // test area
            var user_message = $message_input.val().replace(/[\n\r]/g, "");
            console.log(user_message);
            var username = "Runray";
            var resp;

            sendRequest("control.jsp","message="+user_message+"&user="+username, reply , "POST");
            // end test area

            return user_message;
        };

        sendMessage = function (text) {
            var $messages, message;
            if (text.trim() === '') {
                return;
            }
            $('.message_input').val('');
            $messages = $('.messages');

            message_side = message_side === 'left' ? 'right' : 'left';
            message = new Message({
                text: text,
                message_side: message_side
            });
            message.draw();

            return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
        };

        /*$('.send_message').click(function (e) {
            return sendMessage(getMessageText());
        });*/
        $('.message_input').keypress(function (e) {
            if (e.which === 13) {
                var text = getMessageText();
                return sendMessage(text);
            }
        });
    });
}.call(this));