class User {
  String? phone;
  String? username;
  String? email;
  String? password;
  DateTime? date;

  User({
    required this.phone,
    required this.username,
    required this.email,
    required this.password,
    required this.date,
  });

  User.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    date = DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['phone'] = phone;
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    data['date'] = date?.toIso8601String(); 
    return data;
  }
}
