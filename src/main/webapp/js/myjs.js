$(document).ready(function() {
    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#registerForm').bootstrapValidator({
//        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove'
        },
        fields: {
        	uphone: {
                message: '手机号不合法',
                validators: {
                    notEmpty: {
                        message: '手机号码不能为空'
                    },
                    stringLength: {
                        min: 11,
                        max: 11,
                        message: '请输入11位手机号码'
                    },
                    regexp: {
                        regexp: /^1[3|5|7|8]{1}[0-9]{9}$/,
                        message: '请输入正确的手机号码'
                    }
//                    ,//做后台验证
//                    remote: {
//                        url: '#',
//                        message: '手机号被注册不可用'
//                    }
                }
            },
            uname: {
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    regexp: {
                        regexp: /[\u4e00-\u9fa5]/ ,
                        message: '用户名必须是汉字'
                        	
                    },
                    stringLength: {
                        min: 2,
                        max: 5,
                        message: '用户名长度应为2-5'
                    }
                }
            },
            
            upassword: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 11,
                        message: '密码长度应为6-11'
                    }
                }
            },
            Confirm: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'upassword',
                        message: '两次密码不一致'
                    }
                }
            },
            captcha: {
                validators: {
                    callback: {
                        message: '答案错误',
                        callback: function(value, validator) {
                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                            return value == sum;
                        }
                    }
                }
            }
        }
    });
    //注册验证
    $('#signInForm').bootstrapValidator({
//      live: 'disabled',
      message: 'This value is not valid',
      feedbackIcons: {
          valid: 'glyphicon glyphicon-ok',
          invalid: 'glyphicon glyphicon-remove'
      },
      fields: {
      	uphone: {
              message: '手机号不合法',
              validators: {
                  notEmpty: {
                      message: '手机号码不能为空'
                  },
                  stringLength: {
                      min: 11,
                      max: 11,
                      message: '请输入11位手机号码'
                  },
                  regexp: {
                      regexp: /^1[3|5|7|8]{1}[0-9]{9}$/,
                      message: '请输入正确的手机号码'
                  }
              }
          },
          
          upassword: {
              validators: {
                  notEmpty: {
                      message: '密码不能为空'
                  },
                  stringLength: {
                      min: 6,
                      max: 11,
                      message: '密码长度应为6-11'
                  }
              }
          }
      }
    });
    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#registerForm').bootstrapValidator('validate');
    });

    $('#resetBtn').click(function() {
        $('#registerForm').data('bootstrapValidator').resetForm(true);
    });
    

    
});
