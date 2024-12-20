import 'package:design_system/design_system.dart';
import 'package:employees_list/core/utils/extensions.dart';
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
      iconColor: Theme.of(context).primaryColor,
      collapsedIconColor: Theme.of(context).primaryColor,
      collapsedShape: Border.all(color: AppTheme.of(context).colors.gray10),
      shape: Border.all(color: AppTheme.of(context).colors.gray10),
      title: Text(
        employee.name,
        style: Theme.of(context).textTheme.titleSmall,
      ),
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
              const Divider(),
              EmployeeInfoLine(
                label: 'Data de admissão',
                content: employee.admissionDate.format(),
              ),
              Divider(),
              EmployeeInfoLine(
                label: 'Telefone',
                content: employee.phone.toPhone(),
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
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
