import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';

class ProfileUserModel extends ProfileUserEntity {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;

  ProfileUserModel({this.id, this.name, this.email, this.phone, this.gender})
    : super(name: name ?? "", email: email ?? "", phone: phone ?? "");

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) {
    return ProfileUserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'phone': phone,
    'gender': gender,
  };
}
