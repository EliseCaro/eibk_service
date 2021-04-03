;
(function($, window, document, undefined) {
	'use strict';
	$.fn.myEmoji = function(options) {
		var defaults = {
			emojiconfig: {
				tieba: {
					name: "贴吧表情",
					path: "/static/comment/img/tieba/",
					maxNum: 50,
					file: ".jpg",
					placeholder: ":{alias}:",
					alias: {
						1: "hehe",
						2: "haha",
						3: "tushe",
						4: "a",
						5: "ku",
						6: "lu",
						7: "kaixin",
						8: "han",
						9: "lei",
						10: "heixian",
						11: "bishi",
						12: "bugaoxing",
						13: "zhenbang",
						14: "qian",
						15: "yiwen",
						16: "yinxian",
						17: "tu",
						18: "yi",
						19: "weiqu",
						20: "huaxin",
						21: "hu",
						22: "xiaonian",
						23: "neng",
						24: "taikaixin",
						25: "huaji",
						26: "mianqiang",
						27: "kuanghan",
						28: "guai",
						29: "shuijiao",
						30: "jinku",
						31: "shengqi",
						32: "jinya",
						33: "pen",
						34: "aixin",
						35: "xinsui",
						36: "meigui",
						37: "liwu",
						38: "caihong",
						39: "xxyl",
						40: "taiyang",
						41: "qianbi",
						42: "dnegpao",
						43: "chabei",
						44: "dangao",
						45: "yinyue",
						46: "haha2",
						47: "shenli",
						48: "damuzhi",
						49: "ruo",
						50: "OK"
					},
					title: {
						1: "呵呵",
						2: "哈哈",
						3: "吐舌",
						4: "啊",
						5: "酷",
						6: "怒",
						7: "开心",
						8: "汗",
						9: "泪",
						10: "黑线",
						11: "鄙视",
						12: "不高兴",
						13: "真棒",
						14: "钱",
						15: "疑问",
						16: "阴脸",
						17: "吐",
						18: "咦",
						19: "委屈",
						20: "花心",
						21: "呼~",
						22: "笑脸",
						23: "冷",
						24: "太开心",
						25: "滑稽",
						26: "勉强",
						27: "狂汗",
						28: "乖",
						29: "睡觉",
						30: "惊哭",
						31: "生气",
						32: "惊讶",
						33: "喷",
						34: "爱心",
						35: "心碎",
						36: "玫瑰",
						37: "礼物",
						38: "彩虹",
						39: "星星月亮",
						40: "太阳",
						41: "钱币",
						42: "灯泡",
						43: "茶杯",
						44: "蛋糕",
						45: "音乐",
						46: "haha",
						47: "胜利",
						48: "大拇指",
						49: "弱",
						50: "OK"
					}
				}
				, AcFun: {
				 	name: "AcFun表情",
				 	path: "/static/comment/img/AcFun/",
				 	maxNum: 54,
				 	file: ".png"
				 }
                , qq: {
                    name: "QQ表情",
                    path: "/static/comment/img/qq/",
                    maxNum: 91,
                    file: ".gif"
                }
			},
			postFunction: function() {
                const o = $(".postBtn");
                const v = InputText.html();
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: o.data('href'),
                    data:{
                        id:o.data("word"),
                        content:v,
                        type:o.data("type")
                    },
                    success: function (result) {
                        if(result.status == true){
                          const data = result.data;
                          var html="";
                              html+='<li class="detail_comment_init">';
                              html+='<img class="d_left" src="'+data.avatar+'?imageMogr2/gravity/Center/crop/200x200">';
                              html+='<div class="d_left" style="padding-left: 35px;max-width: 695px;">';
                              html+='<p class="detail_next_title t_left">'+data.nickname+'  <span style="color: #9B9B9B;margin-left: 15px;">刚刚</span></p>';
                              html+='<p style="color: #9B9B9B;line-height: 23px;margin-top: 6px;" class="detail_next_date comment_box t_left">'+data.content+'</p>';
                              html+='</div>';
                              html+='</li>';
                        $(".detail_comment_list").append(html);
                        $(".Input_text").html("");
                        }else if(result.msg == "-100"){
                            const o = $("#loginBtn");
                            layer.open({
                                title:o.data('title') || false,
                                type: 2,
                                area: [o.data('width'), o.data('height')],
                                fixed: true, //不固定
                                maxmin: false,
                                content: o.data('href')
                            });
                        }else {
                            layer.msg(result.msg, {time: 1000, icon:2});
                        }
                    }
                })
			}
		};
		var opts = $.extend(defaults, options);
		var emojiconfig = opts.emojiconfig;
		var plBox = $(this);
		var InputBox = plBox.find('.Input_Box');
		var faceDiv = plBox.find('.faceDiv');
		var InputText = InputBox.find('.Input_text');
		var InputFoot = InputBox.find('.Input_Foot');
		var imgBtn = InputFoot.find('.imgBtn');

		imgBtn.click(
			function() {
				var emojiContainer = faceDiv.find('.emoji_container');
				if (emojiContainer.children().length <= 0) {
					faceDiv.css({
						width: Math.floor(InputText.width() / 30) * 30 +20+ 'px',
						display: 'block'
					});
                    faceDiv.addClass('bounceIn');faceDiv.addClass('animated');//出场动画
					for (var emojilist in emojiconfig) {
						emojiContainer.append('<section class="for_' + emojilist + '"></section>');
						faceDiv.find('.emoji_tab').append('<a href="#!" data-target="for_' + emojilist + '">' + emojiconfig[emojilist].name + '</a>');
						for (var i = 1; i <= emojiconfig[emojilist].maxNum; i++) {
							if (emojiContainer.find('.for_' + emojilist) !== undefined) {
								emojiContainer.find('.for_' + emojilist).append('<a href="#!" class="_img"><img src="' + emojiconfig[emojilist].path + i + emojiconfig[emojilist].file + '" alt="" data-alias="'+(emojiconfig[emojilist].alias == undefined ? (i+emojiconfig[emojilist].file) : emojiconfig[emojilist].alias[i])+'" title="' + (emojiconfig[emojilist].title == undefined ? '' : emojiconfig[emojilist].title[i]) + '" /></a>');
							}
						}
					}
					faceDiv.find('.emoji_container section')[0].style.display = 'block';
					faceDiv.find('.emoji_tab a')[0].className += 'active';
					faceDiv.find('.emoji_container ._img').on('click', function() {
						if (InputText[0].nodeName === 'DIV') {
							InputText.append(this.innerHTML);
						} else {
							InputText.append('[' + $(this).find('img').attr('data-alias')+']');
						}

					});
					faceDiv.find('.emoji_tab a').on('click', function() {
						$(this).parent().prev().find('section').hide();
						faceDiv.find('.emoji_container .' + $(this).attr('data-target')).show();
						faceDiv.find('.emoji_tab a').removeClass('active');
						this.className += ' active';
					});
				} else {
					faceDiv.toggle();
				}
			}
		);

		InputFoot.find('.postBtn').on('click', opts.postFunction);
		$(document).on('click', function(e) {
			if ((faceDiv.find($(e.target)).length) <= 0 && (InputBox.find($(e.target)).length <= 0)) {
				faceDiv.hide();
			}
		});
	};
})(jQuery, window, document);