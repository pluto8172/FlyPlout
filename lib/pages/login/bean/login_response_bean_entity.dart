class LoginResponseBeanEntity {
	String msg;
	bool fail;
	int code;
	LoginResponseBeanData data;
	bool success;

	LoginResponseBeanEntity({this.msg, this.fail, this.code, this.data, this.success});

	LoginResponseBeanEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		fail = json['fail'];
		code = json['code'];
		data = json['data'] != null ? new LoginResponseBeanData.fromJson(json['data']) : null;
		success = json['success'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['fail'] = this.fail;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['success'] = this.success;
		return data;
	}
}

class LoginResponseBeanData {
	bool isFirstLogin;
	String userId;

	LoginResponseBeanData({this.isFirstLogin, this.userId});

	LoginResponseBeanData.fromJson(Map<String, dynamic> json) {
		isFirstLogin = json['isFirstLogin'];
		userId = json['userId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isFirstLogin'] = this.isFirstLogin;
		data['userId'] = this.userId;
		return data;
	}
}
