class DoctorEntity {
  final int id;
  final String name;
  final String specialty;
  final String degree;
  final String? imageUrl;

  DoctorEntity({
    required this.id,
    required this.name,
    required this.specialty,
    required this.degree,
    required this.imageUrl,
  });
}
