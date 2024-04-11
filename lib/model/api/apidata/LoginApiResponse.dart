class LoginApiResponse {
	Status? _status;
	Body? _body;

	LoginApiResponse({Status? status, Body? body}) {
		if (status != null) {
			this._status = status;
		}
		if (body != null) {
			this._body = body;
		}
	}

	Status? get status => _status;
	set status(Status? status) => _status = status;
	Body? get body => _body;
	set body(Body? body) => _body = body;

	 LoginApiResponse.fromJson(Map<String, dynamic> json) {
		_status = json['status'] != null ? new Status.fromJson(json['status']) : null;
		_body = json['body'] != null ? new Body.fromJson(json['body']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this._status != null) {
			data['status'] = this._status!.toJson();
		}
		if (this._body != null) {
			data['body'] = this._body!.toJson();
		}
		return data;
	}
}

class Status {
	String? _code;
	String? _message;

	Status({String? code, String? message}) {
		if (code != null) {
			this._code = code;
		}
		if (message != null) {
			this._message = message;
		}
	}

	String? get code => _code;
	set code(String? code) => _code = code;
	String? get message => _message;
	set message(String? message) => _message = message;

	Status.fromJson(Map<String, dynamic> json) {
		_code = json['code'];
		_message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this._code;
		data['message'] = this._message;
		return data;
	}
}

class Body {
	String? _id;
	String? _name;
	String? _email;
	String? _mobile;
	String? _country;
	Null? _timeZone;
	Null? _socialId;
	Null? _socialType;
	String? _status;
	String? _createdDate;
	String? _deviceToken;
	String? _deviceType;
	String? _newsletter;
	String? _userType;
	String? _latitude;
	String? _longitude;
	String? _userImage;
	String? _appVersion;
	Null? _isStaff;
	String? _referred;
	String? _secureKey;
	String? _appName;

	Body(
			{String? id,
				String? name,
				String? email,
				String? mobile,
				String? country,
				Null? timeZone,
				Null? socialId,
				Null? socialType,
				String? status,
				String? createdDate,
				String? deviceToken,
				String? deviceType,
				String? newsletter,
				String? userType,
				String? latitude,
				String? longitude,
				String? userImage,
				String? appVersion,
				Null? isStaff,
				String? referred,
				String? secureKey,
				String? appName}) {
		if (id != null) {
			this._id = id;
		}
		if (name != null) {
			this._name = name;
		}
		if (email != null) {
			this._email = email;
		}
		if (mobile != null) {
			this._mobile = mobile;
		}
		if (country != null) {
			this._country = country;
		}
		if (timeZone != null) {
			this._timeZone = timeZone;
		}
		if (socialId != null) {
			this._socialId = socialId;
		}
		if (socialType != null) {
			this._socialType = socialType;
		}
		if (status != null) {
			this._status = status;
		}
		if (createdDate != null) {
			this._createdDate = createdDate;
		}
		if (deviceToken != null) {
			this._deviceToken = deviceToken;
		}
		if (deviceType != null) {
			this._deviceType = deviceType;
		}
		if (newsletter != null) {
			this._newsletter = newsletter;
		}
		if (userType != null) {
			this._userType = userType;
		}
		if (latitude != null) {
			this._latitude = latitude;
		}
		if (longitude != null) {
			this._longitude = longitude;
		}
		if (userImage != null) {
			this._userImage = userImage;
		}
		if (appVersion != null) {
			this._appVersion = appVersion;
		}
		if (isStaff != null) {
			this._isStaff = isStaff;
		}
		if (referred != null) {
			this._referred = referred;
		}
		if (secureKey != null) {
			this._secureKey = secureKey;
		}
		if (appName != null) {
			this._appName = appName;
		}
	}

	String? get id => _id;
	set id(String? id) => _id = id;
	String? get name => _name;
	set name(String? name) => _name = name;
	String? get email => _email;
	set email(String? email) => _email = email;
	String? get mobile => _mobile;
	set mobile(String? mobile) => _mobile = mobile;
	String? get country => _country;
	set country(String? country) => _country = country;
	Null? get timeZone => _timeZone;
	set timeZone(Null? timeZone) => _timeZone = timeZone;
	Null? get socialId => _socialId;
	set socialId(Null? socialId) => _socialId = socialId;
	Null? get socialType => _socialType;
	set socialType(Null? socialType) => _socialType = socialType;
	String? get status => _status;
	set status(String? status) => _status = status;
	String? get createdDate => _createdDate;
	set createdDate(String? createdDate) => _createdDate = createdDate;
	String? get deviceToken => _deviceToken;
	set deviceToken(String? deviceToken) => _deviceToken = deviceToken;
	String? get deviceType => _deviceType;
	set deviceType(String? deviceType) => _deviceType = deviceType;
	String? get newsletter => _newsletter;
	set newsletter(String? newsletter) => _newsletter = newsletter;
	String? get userType => _userType;
	set userType(String? userType) => _userType = userType;
	String? get latitude => _latitude;
	set latitude(String? latitude) => _latitude = latitude;
	String? get longitude => _longitude;
	set longitude(String? longitude) => _longitude = longitude;
	String? get userImage => _userImage;
	set userImage(String? userImage) => _userImage = userImage;
	String? get appVersion => _appVersion;
	set appVersion(String? appVersion) => _appVersion = appVersion;
	Null? get isStaff => _isStaff;
	set isStaff(Null? isStaff) => _isStaff = isStaff;
	String? get referred => _referred;
	set referred(String? referred) => _referred = referred;
	String? get secureKey => _secureKey;
	set secureKey(String? secureKey) => _secureKey = secureKey;
	String? get appName => _appName;
	set appName(String? appName) => _appName = appName;

	Body.fromJson(Map<String, dynamic> json) {
		_id = json['id'];
		_name = json['name'];
		_email = json['email'];
		_mobile = json['mobile'];
		_country = json['country'];
		_timeZone = json['time_zone'];
		_socialId = json['social_id'];
		_socialType = json['social_type'];
		_status = json['status'];
		_createdDate = json['created_date'];
		_deviceToken = json['device_token'];
		_deviceType = json['device_type'];
		_newsletter = json['newsletter'];
		_userType = json['user_type'];
		_latitude = json['latitude'];
		_longitude = json['longitude'];
		_userImage = json['user_image'];
		_appVersion = json['app_version'];
		_isStaff = json['is_staff'];
		_referred = json['referred'];
		_secureKey = json['secure_key'];
		_appName = json['app_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this._id;
		data['name'] = this._name;
		data['email'] = this._email;
		data['mobile'] = this._mobile;
		data['country'] = this._country;
		data['time_zone'] = this._timeZone;
		data['social_id'] = this._socialId;
		data['social_type'] = this._socialType;
		data['status'] = this._status;
		data['created_date'] = this._createdDate;
		data['device_token'] = this._deviceToken;
		data['device_type'] = this._deviceType;
		data['newsletter'] = this._newsletter;
		data['user_type'] = this._userType;
		data['latitude'] = this._latitude;
		data['longitude'] = this._longitude;
		data['user_image'] = this._userImage;
		data['app_version'] = this._appVersion;
		data['is_staff'] = this._isStaff;
		data['referred'] = this._referred;
		data['secure_key'] = this._secureKey;
		data['app_name'] = this._appName;
		return data;
	}
}