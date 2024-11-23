import 'package:employees_list/features/employees/viewmodels/employee_cubit.dart';
import 'package:employees_list/features/employees/viewmodels/employee_state.dart';
import 'package:employees_list/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class EmployeesPage extends StatefulWidget {
  EmployeesPage({super.key});

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
  EmployeeCubit cubit = getIt.get<EmployeeCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getAllEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
              child: Text(
                'CG',
              ),
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/icons/bell.png'),
              ),
              Positioned(
                top: 5,
                right: 10,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 0, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      '02',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Funcionários',
                  style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      color: Color.fromARGB(
                        255,
                        237,
                        239,
                        251,
                      ),
                      child: Row(
                        children: [
                          Text('Foto'),
                          SizedBox(
                            width: 24,
                          ),
                          Text('Nome')
                        ],
                      ),
                    ),
                    BlocBuilder<EmployeeCubit, EmployeeState>(
                        bloc: cubit,
                        builder: (context, state) {
                          if (state.isLoading) {
                            return Shimmer.fromColors(
                              baseColor: Colors.white,
                              highlightColor: Colors.grey,
                              child: Container(
                                color: Colors.grey,
                                height: 500,
                              ),
                            );
                          }

                          if (state.errorMessage.isNotEmpty) {
                            return Center(
                              child: Text(state.errorMessage),
                            );
                          }

                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.employees.length,
                            itemBuilder: (context, index) {
                              return ExpansionTile(
                                title: Text(state.employees[index].name),
                                leading: Image.network(
                                    state.employees[index].imageUrl),
                              );
                            },
                          );
                        })
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
