import 'dart:ui';import 'package:firebase_auth/firebase_auth.dart';import 'package:fish_redux/fish_redux.dart';import 'package:flutter/material.dart' hide Action;import 'package:flutter_fly_plout/globalstate/action.dart';import 'package:flutter_fly_plout/globalstate/state.dart';Reducer<GlobalState> buildReducer(){  return asReducer(    <Object, Reducer<GlobalState>>{      GlobalAction.changeThemeColor :_onChangeThemeColor,      GlobalAction.changeLocale : _onChangeLocal,      GlobalAction.setUser : _onSetUser,    },  );}List<Color> _color = <Color>[  Colors.green,  Colors.red,  Colors.black,  Colors.blue,];GlobalState _onChangeThemeColor(GlobalState state, Action action){  final Color next = _color[((_color.indexOf(state.themeColor) +1) % _color.length)];  return state.clone()..themeColor = next;}GlobalState _onChangeLocal(GlobalState state, Action action){  final Locale l = action.payload;  return state.clone().. locale = l;}GlobalState _onSetUser(GlobalState state, Action action){  final FirebaseUser user = action.payload;  return state.clone().. user = user;}