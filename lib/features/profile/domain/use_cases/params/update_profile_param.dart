class UpdateProfileParam {
  final String name;
  final String email;
  final String phone;
  final String gender;
  UpdateProfileParam({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
  });
  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "phone": phone, "gender": gender};
  }
}
