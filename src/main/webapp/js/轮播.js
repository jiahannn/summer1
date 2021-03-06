	$.carousel = {
    now : 0,                    //当前显示的图片索引
    hasStarted : false,         //是否开始轮播
    interval : null,            //定时器
    liItems : null,             //要轮播的li元素集合
    len : 0,                    //liItems的长度
    aBox : null,                //包含指示器的dom对象
    bBox : null,                //包含前后按钮的dom对象

    /**
     * 初始化及控制函数
     * @param bannnerBox string 包含整个轮播图盒子的id或class
     * @param aBox  string 包含指示器的盒子的id或class
     * @param btnBox string 包含前后按钮的盒子的id或class
     */
    startPlay : function(bannnerBox,aBox,btnBox) {
        //初始化对象参数
        var that = this;
        this.liItems = $(bannnerBox).find('ul').find('li');
        this.len = this.liItems.length;
        this.aBox = $(bannnerBox).find(aBox);
        this.bBox = $(bannnerBox).find(btnBox);
        //让第一张图片显示，根据轮播图数量动态创建指示器，并让第一个指示器处于激活状态，隐藏前后按钮
        this.liItems.first('li').css({'opacity': 1, 'z-index': 1}).siblings('li').css({'opacity': 0, 'z-index': 0});
        var aDom = '';
        for (var i = 0; i < this.len; i++){
            aDom += '<a></a>';
        }
        $(aDom).appendTo(this.aBox);
        this.aBox.find('a:first').addClass("indicator-active");
        this.bBox.hide();
        //鼠标移入banner图时，停止轮播并显示前后按钮，移出时开始轮播并隐藏前后按钮
        $(bannnerBox).hover(function (){
            that.stop();
            that.bBox.fadeIn(200);
        }, function (){
            that.start();
            that.bBox.fadeOut(200);
        });
        //鼠标移入指示器时，显示对应图片，移出时继续播放
        this.aBox.find('a').hover(function (){
            that.stop();
            var out = that.aBox.find('a').filter('.indicator-active').index();
            that.now = $(this).index();
            if(out!=that.now) {
                that.play(out, that.now)
            }
        }, function (){
            that.start();
        });
        //点击左右按钮时显示上一张或下一张
        $(btnBox).find('a:first').click(function(){that.next()});
        $(btnBox).find('a:last').click(function(){that.prev()});
        //开始轮播
        this.start()
    },
    //前一张函数
    prev : function (){
        var out = this.now;
        this.now = (--this.now + this.len) % this.len;
        this.play(out, this.now);
    },
    //后一张函数
    next : function (){
        var out = this.now;
        this.now = ++this.now % this.len;
        this.play(out, this.now);
    },
    /**
     * 播放函数
     * @param out number 要消失的图片的索引值
     * @param now number 接下来要轮播的图的索引值
     */
    play : function (out, now){
        this.liItems.eq(out).stop().animate({opacity:0,'z-index':0},500).end().eq(now).stop().animate({opacity:1,'z-index':1},500);
        this.aBox.find('a').removeClass('indicator-active').eq(now).addClass('indicator-active');
    },
    //开始函数
    start : function(){
        if(!this.hasStarted) {
            this.hasStarted = true;
            var that = this;
            this.interval = setInterval(function(){
                that.next();
            },3500);
        }
    },
    //停止函数
    stop : function (){
        clearInterval(this.interval);
        this.hasStarted = false;
    }
};

//	$(function(){
//		　　$.carousel.startPlay('#J_bg_ban','#J_bg_indicator','#J_bg_btn');
//		})
