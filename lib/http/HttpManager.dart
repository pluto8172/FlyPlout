import 'package:dio/dio.dart';
import 'package:flutter_fly_plout/constant/global_config.dart';
import 'dart:convert';

import 'result_code.dart';

/*
 * 网络请求管理类
 */
class DioManager {

  //写一个单例
  //在 Dart 里，带下划线开头的变量是私有变量
  static DioManager _instance;

  static DioManager getInstance() {
    if (_instance == null) {
      _instance = DioManager();
    }
    return _instance;
  }
  Dio dio = new Dio();
  DioManager() {
    // Set default configs
    dio.options.headers = {
      "appKey":'HZ-BKHB-EXH5',
      "channel":'EXH5',
      "appVersion":'1.0.0',
      "source":'1',
      "equipmentId":'867130034254042',
      "timestamp":'1574752238302',
      "phoneModel":'HUAWEIEML',
      "20":'20',
    };
    dio.options.baseUrl = "http://g.dev.guoguoenglish.com/";
    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 3000;

    dio.interceptors.add(LogInterceptor(responseBody: GlobalConfig.isDebug)); //是否开启请求日志
    //dio.interceptors.add(CookieManager(CookieJar()));//缓存相关类，具体设置见https://github.com/flutterchina/cookie_jar
  }

  //get请求
  get(String url, FormData params,Function successCallBack,Function errorCallBack) async {
    _requestHttp(url, successCallBack, 'get', params, errorCallBack);
  }

  //post请求
  post(String url, params,Function successCallBack,Function errorCallBack) async {
    _requestHttp(url, successCallBack, "post", params, errorCallBack);
  }

  _requestHttp(String url, Function successCallBack, [String method, FormData params, Function errorCallBack]) async {
    Response response;
    try {
      if (method == 'get') {
        if (params != null && params.length>0) {
          response = await dio.get(url);
        } else {
          response = await dio.get(url);
        }
      } else if (method == 'post') {
        if (params != null && params.length>0) {
          response = await dio.post(url, data: params);
        } else {
          response = await dio.post(url);
        }
      }
    }on DioError catch(error) {
      // 请求错误处理
      Response errorResponse;
      if (error.response != null) {
        errorResponse = error.response;
      } else {
        errorResponse = new Response(statusCode: 666);
      }
      // 请求超时
      if (error.type == DioErrorType.CONNECT_TIMEOUT) {
        errorResponse.statusCode = ResultCode.CONNECT_TIMEOUT;
      }
      // 一般服务器错误
      else if (error.type == DioErrorType.RECEIVE_TIMEOUT) {
        errorResponse.statusCode = ResultCode.RECEIVE_TIMEOUT;
      }

      // debug模式才打印
      if (GlobalConfig.isDebug) {
        print('请求异常: ' + error.toString());
        print('请求异常url: ' + url);
        print('请求头: ' + dio.options.headers.toString());
        print('method: ' + dio.options.method);
      }
      _error(errorCallBack, error.message);
      return '';
    }

    String dataStr = json.encode(response.data);
    Map<String, dynamic> dataMap = json.decode(dataStr);
    if (dataMap == null || dataMap['state'] == 0) {
      _error(errorCallBack, '错误码：' + dataMap['errorCode'].toString() + '，' + response.data.toString());
    }else if (successCallBack != null) {
      successCallBack(dataMap);
    }
  }
  _error(Function errorCallBack, String error) {
    if (errorCallBack != null) {
      errorCallBack(error);
    }
  }

}