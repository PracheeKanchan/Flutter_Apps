import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userinfo extends InheritedWidget{
  String email;
  String password;

  Userinfo({
    super.key,
    required this.email,
    required this.password,
    required super.child,
  });

  static Userinfo of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Userinfo>()!;
  }

  @override
  bool updateShouldNotify(Userinfo oldWidget){
      return email != oldWidget.email;
  }
}