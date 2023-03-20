/*price range*/

$('#sl2').slider();

var RGBChange = function() {
    $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
};

/*scroll to top*/

$(document).ready(function(){
    $(function () {
        $.scrollUp({
            scrollName: 'scrollUp', // Element ID
            scrollDistance: 300, // Distance from top/bottom before showing element (px)
            scrollFrom: 'top', // 'top' or 'bottom'
            scrollSpeed: 300, // Speed back to top (ms)
            easingType: 'linear', // Scroll to top easing (see http://easings.net/)
            animation: 'fade', // Fade, slide, none
            animationSpeed: 200, // Animation in speed (ms)
            scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
            //scrollTarget: false, // Set a custom target element for scrolling to the top
            scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
            scrollTitle: false, // Set a custom <a> title if required.
            scrollImg: false, // Set true to use image
            activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
            zIndex: 2147483647 // Z-Index for the overlay
        });
    });
});

function cart(res){

    $(".modal-content");
    $("#card .modal-body").html(res);
    $("#card").modal({width: 800});
}
$(".add-to-cart").click(function (e) {
    $('.modal-header').show();
    $('.modal-body').show();
    $('.modal-footer').show();
    $('.message').hide();
    $(".backtocart").hide();
    $(".order").hide().show().fadeIn(2000);
    e.preventDefault();
    var id = $(this).data("id");
    $.ajax({
        type:"GET",
        url:"index.php?r=site/add",
        data:{id: id},
        success:function(res){

            cart(res)
        },
        error:function(){
        }
    });
});


function  minus(id) {
    $(".backtocart").hide();
    $(".order").hide().show().fadeIn(2000);
    $.ajax({
        type:"GET",
        url:"index.php?r=site/minus",
        data:{id: id},
        success:function(res){
            cart(res)
        },
        error:function(){
        }
    });
}

function  plus(id) {
    $(".backtocart").hide();
    $(".order").hide().show().fadeIn(2000);
    $.ajax({
        type:"GET",
        url:"index.php?r=site/plus",
        data:{id: id},
        success:function(res){
            cart(res)
        },
        error:function(){
        }
    });
}

function  dell(id){
    $(".backtocart").hide();
    $(".order").hide().show().fadeIn(2000);
    $.ajax({
        type:"GET",
        url:"index.php?r=site/dell",
        data:{id: id},
        success:function(res){
            cart(res)
        },
        error:function(){
        }
    });
}

function clearsession(){
    $.ajax({
        type:"GET",
        url:"index.php?r=site/clear",
        data:{},
        success:function(res){
            cart(res)
        },
        error:function(){
        }
    });
}

function cart2(){
    $('.message').hide();
    $(".order").hide();
    $(".backtocart").hide().show().fadeIn(2000);
    $.ajax({
        type:"GET",
        url:"index.php?r=site/cart2",
        data:{},
        success:function(res){
            cart(res)
        },
        error:function(){
        }
    });
}

function message(){
    $('.modal-header').fadeOut(800);
    $('.modal-body').fadeOut(800);
    $('.modal-footer').fadeOut(800);
    $('.message').hide().show().fadeIn(2000).html("Successful order!");
};
function submitcart(){

    var name = $('.name').val();
    var email = $('.email').val();
    var text = $('.text').val();
    $.ajax({
        type:"GET",
        url:"index.php?r=site/add2",
        data:{name: name, email:email, text:text},
        success:function(){
            message();
            // console.log(name);
            // console.log(email);
            // console.log(text);
        },
        error:function(){
        }
    });
}

function backtocart(){
    $('.message').hide();
    $(".backtocart").hide();
    $(".order").hide().show().fadeIn(2000);
    $.ajax({
        type:"GET",
        url:"index.php?r=site/backtocart",
        data:{},
        success:function(res){

            cart(res)
        },
        error:function(){
        }
    });
}




function prodpreview(res){
    
    $("#prodpreview .modal-body-preview").html(res);
    $("#prodpreview").modal({width: 800});
}
$(".proddetail-preview").click(function (e) {
    e.preventDefault();
     var id = $(this).data("id");

    $.ajax({
        type:"GET",
        url:"index.php?r=site/proddetail",
        data:{id: id},
        success:function(res){
           prodpreview(res)
        },
        error:function(){
        }
    });
});





