$(()=>{
    let main_nav_top = $(".main__nav").offset().top;
    console.log($(window).scroll(function(e){
            console.log($(this).scrollTop());
            if($(this).scrollTop()>=main_nav_top){
                $(".mn").removeClass("main__nav");
                $(".mn").addClass("nav-fixed");
            }else{
                $(".mn").addClass("main__nav");
                $(".mn").removeClass("nav-fixed");
            }
    }));
})