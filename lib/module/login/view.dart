import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_plout/http/HttpManager.dart';
import 'package:flutter_fly_plout/module/login/bean/login_response_bean_entity.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return LoginWidget();
}


class LoginWidget extends StatefulWidget{

  @override
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginWidget>{

  //全局key用来获取from表单
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String userName;
  String password;

  void login(){
    var loginForm = loginKey.currentState;
    if(loginForm.validate()){
      loginForm.save();
      println("userName = $userName   password = $password");
      FormData params = FormData.fromMap({  'mobile': '13648386377', 'loginType': "2", 'password':'1', 'verifyCode':'186666'});

      DioManager.getInstance().post('/v1/api/login/login',params,
              (data) {setState(() {
                    //更新UI等
                    LoginResponseBeanEntity beanEntity = LoginResponseBeanEntity.fromJson(data);
                    String result = beanEntity.data.userId.toString();
                    println("用户名： $result");
                  });
              },
              //错误回调
              (error){}
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("登录"),
        ),

        body: new Column(
          children: <Widget>[

            new Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,

                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "请输入用户名",
                      ),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {

                      },
                    ),

                    new TextFormField(
                      decoration: new InputDecoration(
                          labelText: "请输入密码"
                      ),

                      onSaved: (value) {
                        password = value;
                      },

                      obscureText: true,
                      validator: (value) {
                        return value.length < 6 ? "密码长度不够6位" : null;
                      },

                      onFieldSubmitted: (value) {

                      },
                    )
                  ],
                ),

              ),
            ),

            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  "登录",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        )
    );
  }

}