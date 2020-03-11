	$("#qx").click(function() {
			$(".abc").prop('checked', $("#qx").prop('checked'))
		})

		$(".abc").change(function() {
			if($(".abc").not('input : checked').size() <= 0) {
				$("#qx").attr('checked', true);
			} else {
				$("#qx".attr('checked', false));
			}

		});
		$(".abc").click(function() {
			if($(".abc").not('input :checked').length != 0) {
				$("#qx").attr('checked', false);
			} else {
				$("#qx").attr('checked', true);
			}

		})

		//给每个复选框添加监听事件
		$(".abc").click(function() {
			getsum();
		})

		//加
		$(".jia_1").click(function() {
			var x = $(this).parent('.td_num').find('.in_num').val();
			x++;
			$(this).parent('.td_num').find('.in_num').val(x);
			var y = $(this).parents('tr').find('.td_price').html().substring(1);
			$(this).parents('tr').find('.td_all_price').html("￥" + x * y);
			getsum();

		})

		//减
		$(".jian_1").click(function() {
			var x = $(this).parent('.td_num').find('.in_num').val();
			if(x>1){
				x--;
				$(this).parent('.td_num').find('.in_num').val(x);
			}
			var y = $(this).parents('tr').find('.td_price').html().substring(1);
			$(this).parents('tr').find('.td_all_price').html("￥" + x * y);
			getsum();
		})

		//删除一行

		function del(obj){
			$(obj).parent().parent().remove();
		}
		
		function getsum(){
		var sum = 0;
		var count = 0;
		//遍历每个复选框，如果当前的复选框选中
		//才统计数量和金额
		$(".abc").each(function(){
			//如果当前的复选框选中
			if($(this).prop('checked')){
				//得到当前的行数
				var x = $(this).parent('.td_num').find('.in_num').val();
				count +=x*1;
				var y = $(this).parents('tr').find('.td_all_price').html().substring(1);
				sum +=y*1;
			}
		})
		
		$(".in_num").each(function(){
			//遍历每个文本框
			var x = $(this).html().substring(1);
			sum+=x*1;
		})
		
		$("#sum_price").html("￥"+sum);
		
	}