class DoctorEntity {
  final String id;
  final String name;
  final String specialty;
  final num rating;
  final num reviewsCount;
  final String imageUrl;

  DoctorEntity({
    required this.id,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.reviewsCount,
    required this.imageUrl,
  });
}
