var currentData;
var isLoadMessage = false;
var isProcessing;

$(document).ready(function () {
    isProcessing = false;
    loadMessage(isLoadMessage); // This will run on page load
    setInterval(function () {
        if (isLoadMessage === false) {
            loadMessage(isLoadMessage); // this will run after every 3 seconds
        }
    }, 5000);

    // Set newline key in textarea to SHIFT + ENTER
    $("textarea").keydown(function (e) {
        if (e.keyCode === 13 && !e.shiftKey)
        {
            e.preventDefault();
            // Set submit key in textarea to ENTER
            $(this).closest("form").submit();
        }
    });

    $("#chat-form").on("submit", function (e) {
        isLoadMessage = true;
        var dataString = $("#chat-form").serialize();
        var map = deparam(dataString);
        var chatContent = map.chatContent;
        //var uid = map.chatUserID;
        //var sid = map.sessionID;
        if (chatContent !== "") {
            $.ajax({
                type: "POST",
                url: "ChatController?" + dataString,
                success: function () {
                    loadMessage(isLoadMessage);
                    isLoadMessage = false;
                }
            });
        }
        e.preventDefault();
    });
});

function deparam(query) {
    var pairs, i, keyValuePair, key, value, map = {};
    // remove leading question mark if its there
    if (query.slice(0, 1) === '?') {
        query = query.slice(1);
    }
    if (query !== '') {
        pairs = query.split('&');
        for (i = 0; i < pairs.length; i += 1) {
            keyValuePair = pairs[i].split('=');
            key = decodeURIComponent(keyValuePair[0]);
            value = (keyValuePair.length > 1) ? decodeURIComponent(keyValuePair[1]) : undefined;
            map[key] = value;
        }
    }
    return map;
}

function loadMessage(loadAfterSend) {
    if (isProcessing === false) {
        isProcessing = true;
        $.ajax({
            type: "GET",
            url: "ChatContentController",
            success: function (data) {
                if (data !== null) {
                    // Only change message display if data is different
                    if (currentData !== data) {
                        currentData = data;

                        $('#message-list').html(data);
                        if (loadAfterSend === true) {
                            $('#chat-content').val("");
                        }
                        scrollToBottom();
                    }
                }
            }
        });
        isProcessing = false;
    }
    
}

function scrollToBottom() {
    const element = $(`#message-list`);
    element.animate({
        scrollTop: element.prop("scrollHeight")
    }, 500);
}