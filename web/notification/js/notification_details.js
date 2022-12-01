var currentPage = 1;
const loadLimit = 5;

function prevPage() {
    var lastActivePage = $('.pagination > .active');
    var currentActivePage = $('.pagination > .active').prev();

    // re-enable prev and next button
    $('.prevNext').css("pointer-events", "auto");
    $('.prevNext').css("cursor", "pointer");
    $('.prevNext').css("background-color", "#fff");
    $('.prevNext').css("color", "#000");

    if (currentActivePage.prev().hasClass("prevNext")) {
        currentActivePage.prev().css("pointer-events", "none");
        currentActivePage.prev().css("cursor", "default");
        currentActivePage.prev().css("background-color", "#e6e6e6");
        currentActivePage.prev().css("color", "#c5c5c5");
    }

    lastActivePage.removeClass("active");
    currentActivePage.addClass("active");

    currentPage = currentPage - 1;
    loadPage(currentPage);
}

function nextPage() {
    var lastActivePage = $('.pagination > .active');
    var currentActivePage = $('.pagination > .active').next();

    // re-enable prev and next button
    $('.prevNext').css("pointer-events", "auto");
    $('.prevNext').css("cursor", "pointer");
    $('.prevNext').css("background-color", "#fff");
    $('.prevNext').css("color", "#000");

    if (currentActivePage.next().hasClass("prevNext")) {
        currentActivePage.next().css("pointer-events", "none");
        currentActivePage.next().css("cursor", "default");
        currentActivePage.next().css("background-color", "#e6e6e6");
        currentActivePage.next().css("color", "#c5c5c5");
    }

    lastActivePage.removeClass("active");
    currentActivePage.addClass("active");

    currentPage = currentPage + 1;
    loadPage(currentPage);
}

function loadPage(pageNum) {
    // display none all child
    $('#notif-container > .notif-title-container').css("display", "none");

    // re-enable prev and next button
    $('.prevNext').css("pointer-events", "auto");
    $('.prevNext').css("cursor", "pointer");
    $('.prevNext').css("background-color", "#fff");
    $('.prevNext').css("color", "#000");

    var lastActivePage = $('.pagination > .active');
    var currentActivePage = $('#page-num-' + pageNum);
    var startNum = ((pageNum - 1) * loadLimit) + 1;
    var endNum = pageNum * loadLimit;

    for (let i = startNum; i <= endNum; i++) {
        $('#notif-title-container-id-' + i).attr("style", "display: block !important");
    }

    if (currentActivePage.prev().hasClass("prevNext")) {
        currentActivePage.prev().css("pointer-events", "none");
        currentActivePage.prev().css("cursor", "default");
        currentActivePage.prev().css("background-color", "#e6e6e6");
        currentActivePage.prev().css("color", "#c5c5c5");
    }

    if (currentActivePage.next().hasClass("prevNext")) {
        currentActivePage.next().css("pointer-events", "none");
        currentActivePage.next().css("cursor", "default");
        currentActivePage.next().css("background-color", "#e6e6e6");
        currentActivePage.next().css("color", "#c5c5c5");
    }

    lastActivePage.removeClass("active");
    currentActivePage.addClass("active");

    currentPage = pageNum;
}