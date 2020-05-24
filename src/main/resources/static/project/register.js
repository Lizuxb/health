
$(function() {
    validateRule();
	$('.imgcode').click(function() {
		var url = ctx + "captcha/captchaImage?type=" + captchaType + "&s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

$.validator.setDefaults({
    submitHandler: function() {
        login();
    }
});

function login() {
	$.modal.loading($("#btnSubmit").data("loading"));
    $.ajax({
        type: "post",
        url: ctx + "register",
        data: $("#signupForm").serialize(),
        success: function(r) {
            $.modal.closeLoading();
            if (r.code == 0) {
                $.modal.msg("注册成功！即将跳转登录页面！")
                setTimeout(function () {
                    location.href = ctx + 'login';
                },2500);
            } else {

            	$('.imgcode').click();
            	$(".code").val("");
            	$.modal.msg(r.msg);
            }
        }
    });
}

function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        rules: {
            loginName: {
                required: true,
                isUserName:true,
                minlength: 2,
                maxlength: 20,
                remote: {
                    url: ctx + "system/user/checkLoginNameUnique",
                    type: "post",
                    dataType: "json",
                    data: {
                        name : function() {
                            return $.common.trim($("#loginName").val());
                        }
                    },
                    dataFilter: function(data, type) {
                        return $.validate.unique(data);
                    }
                }
            },
            password: {
                required: true,
                minlength: 5,
                maxlength: 20
            },
            password2: {
                required: true,
                minlength: 5,
                maxlength: 20,
                equalTo: "#password"
            },
            question: {
                required: true
            },
            answer: {
                required: true
            },
            question2: {
                required: true
            },
            answer2: {
                required: true
            },
            cardnum: {
                required: true
            }
        },
        messages: {
            loginName: {
                required: icon + "请输入您的用户名",
                remote: "用户已经存在"
            },
            password: {
                required: icon + "请输入您的密码",
            },
            password2: {
                required: icon + "请确认您的密码",
                equalTo: "两次密码输入不一致"
            }
        }
    })
}
