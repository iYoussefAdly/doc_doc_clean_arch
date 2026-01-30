class RegisterParams {
  final String email;
  final String password;
  final String confirmPassword;
  final String name;
  final String phone;
  final String gender;

  const RegisterParams({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.phone,
    required this.gender,
  });
}
