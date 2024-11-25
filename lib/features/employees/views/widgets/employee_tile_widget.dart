import 'package:employees_list/features/employees/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeTile extends StatelessWidget {
  final EmployeeModel employee;
  const EmployeeTile({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedShape: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
      title: Text(employee.name),
      leading: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(employee.imageUrl))),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              EmployeeInfoLine(
                label: 'Cargo',
                content: employee.job,
              ),
              Divider(),
              EmployeeInfoLine(
                label: 'Data de admissão',
                content: employee.admissionDate.toString(),
              ),
              Divider(),
              EmployeeInfoLine(
                label: 'Telefone',
                content: employee.phone,
              ),
              Divider()
            ],
          ),
        )
      ],
    );
  }
}

class EmployeeInfoLine extends StatelessWidget {
  final String label;
  final String content;
  const EmployeeInfoLine({
    super.key,
    required this.label,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(content),
      ],
    );
  }
}
