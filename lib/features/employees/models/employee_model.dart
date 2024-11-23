class EmployeeModel {
  final String id;
  final String name;
  final DateTime admissionDate;
  final String phone;
  final String imageUrl;

  EmployeeModel(
      {required this.id,
      required this.name,
      required this.admissionDate,
      required this.phone,
      required this.imageUrl});

  factory EmployeeModel.fromJson(Map<String, dynamic> map) {
    return EmployeeModel(
        id: map['id'],
        name: map['name'],
        admissionDate: DateTime.parse(map['admission_date']),
        phone: map['phone'],
        imageUrl: map['image']);
  }
}
