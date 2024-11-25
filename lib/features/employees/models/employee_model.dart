class EmployeeModel {
  final String id;
  final String name;
  final DateTime admissionDate;
  final String phone;
  final String imageUrl;
  final String job;

  EmployeeModel(
      {required this.id,
      required this.name,
      required this.admissionDate,
      required this.phone,
      required this.imageUrl,
      required this.job});

  factory EmployeeModel.fromJson(Map<String, dynamic> map) {
    return EmployeeModel(
        id: map['id'],
        name: map['name'],
        admissionDate: DateTime.parse(map['admission_date']),
        phone: map['phone'],
        imageUrl: map['image'],
        job: map['job']);
  }
}
