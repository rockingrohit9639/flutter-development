import 'package:flutter/material.dart';
import 'package:swflite/models/user.dart';
import 'package:swflite/pages/login_presenter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract{

  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  final scafffoldKey = GlobalKey<ScaffoldState>();

  final _username, _password;

  LoginPagePresenter _presenter;

  _LoginPageState(){
    _presenter = LoginPagePresenter(this);
  }


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = RaisedButton
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
  }

  @override
  void onLoginSuccess(User user) {
    // TODO: implement onLoginSuccess
  }
}
