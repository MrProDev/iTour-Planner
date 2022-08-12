import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserData {
  String uid;
  String name;
  String username;
  String picUrl;
  String city;
  String country;
  UserData({
    required this.uid,
    required this.name,
    required this.username,
    required this.picUrl,
    required this.city,
    required this.country,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'username': username,
      'picUrl': picUrl,
      'city': city,
      'country': country,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      uid: map['uid'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      picUrl: map['picUrl'] as String,
      city: map['city'] as String,
      country: map['country'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source) as Map<String, dynamic>);
}
