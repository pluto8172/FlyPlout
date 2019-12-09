class MineResponseBeanEntity {
	String msg;
	int code;
	MineResponseBeanData data;

	MineResponseBeanEntity({this.msg, this.code, this.data});

	MineResponseBeanEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		code = json['code'];
		data = json['data'] != null ? new MineResponseBeanData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class MineResponseBeanData {
	String birthday;
	String appVersion;
	String studyTime;
	String inviterCode;
	String city;
	String idCard;
	String openId;
	String signStatus;
	String channel;
	String source;
	String wechatBind;
	String equipmentId;
	String vipDescribe;
	String enabled;
	String password;
	String phoneModel;
	String award;
	String loginTime;
	String integral;
	String appKey;
	String id;
	String denyAuth;
	String vip;
	String headAddress;
	String unionId;
	String setAddress;
	String nickName;
	String idfa;
	String ip;
	String isVisitor;
	String sex;
	String mobile;
	String updateTime;
	String dueTime;
	String alipayBind;
	String realName;
	String mobileBind;
	String createTime;
	int yearAge;
	String inviteCode;
	String authUserCode;
	String position;
	String alipayKey;
	String payPassword;
	String ableUnderstand;
	String age;
	String infoflow;

	MineResponseBeanData({this.birthday, this.appVersion, this.studyTime, this.inviterCode, this.city, this.idCard, this.openId, this.signStatus, this.channel, this.source, this.wechatBind, this.equipmentId, this.vipDescribe, this.enabled, this.password, this.phoneModel, this.award, this.loginTime, this.integral, this.appKey, this.id, this.denyAuth, this.vip, this.headAddress, this.unionId, this.setAddress, this.nickName, this.idfa, this.ip, this.isVisitor, this.sex, this.mobile, this.updateTime, this.dueTime, this.alipayBind, this.realName, this.mobileBind, this.createTime, this.yearAge, this.inviteCode, this.authUserCode, this.position, this.alipayKey, this.payPassword, this.ableUnderstand, this.age, this.infoflow});

	MineResponseBeanData.fromJson(Map<String, dynamic> json) {
		birthday = json['birthday'];
		appVersion = json['appVersion'];
		studyTime = json['studyTime'];
		inviterCode = json['inviterCode'];
		city = json['city'];
		idCard = json['idCard'];
		openId = json['openId'];
		signStatus = json['signStatus'];
		channel = json['channel'];
		source = json['source'];
		wechatBind = json['wechatBind'];
		equipmentId = json['equipmentId'];
		vipDescribe = json['vipDescribe'];
		enabled = json['enabled'];
		password = json['password'];
		phoneModel = json['phoneModel'];
		award = json['award'];
		loginTime = json['loginTime'];
		integral = json['integral'];
		appKey = json['appKey'];
		id = json['id'];
		denyAuth = json['denyAuth'];
		vip = json['vip'];
		headAddress = json['headAddress'];
		unionId = json['unionId'];
		setAddress = json['setAddress'];
		nickName = json['nickName'];
		idfa = json['idfa'];
		ip = json['ip'];
		isVisitor = json['isVisitor'];
		sex = json['sex'];
		mobile = json['mobile'];
		updateTime = json['updateTime'];
		dueTime = json['dueTime'];
		alipayBind = json['alipayBind'];
		realName = json['realName'];
		mobileBind = json['mobileBind'];
		createTime = json['createTime'];
		yearAge = json['yearAge'];
		inviteCode = json['inviteCode'];
		authUserCode = json['authUserCode'];
		position = json['position'];
		alipayKey = json['alipayKey'];
		payPassword = json['payPassword'];
		ableUnderstand = json['ableUnderstand'];
		age = json['age'];
		infoflow = json['infoflow'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['birthday'] = this.birthday;
		data['appVersion'] = this.appVersion;
		data['studyTime'] = this.studyTime;
		data['inviterCode'] = this.inviterCode;
		data['city'] = this.city;
		data['idCard'] = this.idCard;
		data['openId'] = this.openId;
		data['signStatus'] = this.signStatus;
		data['channel'] = this.channel;
		data['source'] = this.source;
		data['wechatBind'] = this.wechatBind;
		data['equipmentId'] = this.equipmentId;
		data['vipDescribe'] = this.vipDescribe;
		data['enabled'] = this.enabled;
		data['password'] = this.password;
		data['phoneModel'] = this.phoneModel;
		data['award'] = this.award;
		data['loginTime'] = this.loginTime;
		data['integral'] = this.integral;
		data['appKey'] = this.appKey;
		data['id'] = this.id;
		data['denyAuth'] = this.denyAuth;
		data['vip'] = this.vip;
		data['headAddress'] = this.headAddress;
		data['unionId'] = this.unionId;
		data['setAddress'] = this.setAddress;
		data['nickName'] = this.nickName;
		data['idfa'] = this.idfa;
		data['ip'] = this.ip;
		data['isVisitor'] = this.isVisitor;
		data['sex'] = this.sex;
		data['mobile'] = this.mobile;
		data['updateTime'] = this.updateTime;
		data['dueTime'] = this.dueTime;
		data['alipayBind'] = this.alipayBind;
		data['realName'] = this.realName;
		data['mobileBind'] = this.mobileBind;
		data['createTime'] = this.createTime;
		data['yearAge'] = this.yearAge;
		data['inviteCode'] = this.inviteCode;
		data['authUserCode'] = this.authUserCode;
		data['position'] = this.position;
		data['alipayKey'] = this.alipayKey;
		data['payPassword'] = this.payPassword;
		data['ableUnderstand'] = this.ableUnderstand;
		data['age'] = this.age;
		data['infoflow'] = this.infoflow;
		return data;
	}
}
