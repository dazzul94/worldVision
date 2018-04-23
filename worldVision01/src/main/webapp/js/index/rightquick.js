 	//쿠키체크
	function SP_cookieParse(parm){
		var data;
		var c = document.cookie.split(';');
		for(var i=0; i < c.length; i++){
			if(c[i].indexOf(parm)!=-1){
				data = c[i].split('=')[1];
			}
		}
		return data;
	};
     
        
	//토글메뉴
	SMS$.fn.SP_toggleMenu_left = function (options){
		if(this.length == 0) return this;
		if(this.length > 1){
			this.each(function(){SMS$(this).SP_toggleMenu_left(options)});
			return this;
		}
		var defaults = {
			mode:1,
			speed:1000
		};
		var option = SMS$.extend({},defaults,options);
		var mode = {};
		mode.mode1 = {
			self : {
				_toggleMenu : SMS$(this),
				_toggleWid : SMS$(this).find('div').outerWidth(true)
			},
			move : function(){
				var _this = this;

				if(SP_cookieParse('SP_toggle_left')=='off'){
					_this.self._toggleMenu.css({right:-_this.self._toggleWid});
					_this.self._toggleMenu.find('button').removeClass('off');
                    
				}else if(SP_cookieParse('SP_toggle_left')=='on'){
					_this.self._toggleMenu.css({right:0});
					_this.self._toggleMenu.find('button').addClass('off');
				}
                
				_this.self._toggleMenu.show();
				_this.self._toggleMenu.find('button').on('click',function (){
					if (SMS$(this).hasClass('off')) {
						_this.self._toggleMenu.stop().animate({right:-_this.self._toggleWid},option.speed)
						SMS$(this).removeClass('off');
						document.cookie="SP_toggle_left=off;path=/";
                        
					}else {
						_this.self._toggleMenu.stop().animate({right:0},300);
						SMS$(this).addClass('off');
						document.cookie="SP_toggle_left=on;path=/";
					}	
				});				
			}
		};
		mode.mode1.move();
	}
	SMS$('#SP_toggleMenu_ver2').SP_toggleMenu_left({
		mode:1,
		speed:500
	});
     