$("#b_pic1").hover(function(){
	        $("#b_pic2").stop().fadeTo("slow",1,function(){
	        	$(this).css("display", block);
	        })
	    },
	    function(){
	        $("#b_pic2").stop().fadeTo("slow",0,function(){
	            $(this).css("display", none);
	        })
	    }
	);
	
//$("#b_vedio1").hover(function(){
//	        $("#b_vedio2").stop().fadeTo("slow",1,function(){
//	        	$(this).css("display", block);
//	        })
//	    },
//	    function(){
//	        $("#b_vedio2").stop().fadeTo("slow",0,function(){
//	            $(this).css("display", none);
//	        })
//	    }
//	);