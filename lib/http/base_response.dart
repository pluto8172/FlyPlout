/**
 * 网络结果数据
 */
class ResultData {
  var data;
  var msg;
  int code;
  var headers;
  ResultData(this.data, this.msg, this.code, {this.headers});
}