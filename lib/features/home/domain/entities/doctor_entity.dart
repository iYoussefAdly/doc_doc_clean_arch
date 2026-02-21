class DoctorEntity {
  final int id;
  final String name;
  final String specialty;
  final String degree;
  final String? imageUrl;
  final String? description;
  final String? addresse;
  final String? workingTime;
  final String? email;

  DoctorEntity({
    required this.description,
    required this.addresse,
    required this.workingTime,
    required this.email,
    required this.id,
    required this.name,
    required this.specialty,
    required this.degree,
    required this.imageUrl,
  });
}
