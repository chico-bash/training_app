import 'package:flutter/material.dart';
import 'package:training_app/utils/app_color.dart';

class CurrentTrainingPage extends StatelessWidget {
  const CurrentTrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Treino A", style: textTheme.titleLarge),
            Text("Peito e Tríceps", style: textTheme.bodyMedium),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 5.0,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Color(0xFF6B7280),
                            ),
                            Text(
                              "04/05/2026",
                              style: TextStyle(color: Color(0xFFE5E7EB)),
                            ),
                          ],
                        ),

                        Row(
                          spacing: 5.0,
                          children: [
                            Icon(Icons.timer, color: Color(0xFF6B7280)),
                            Text(
                              "1h 05m",
                              style: TextStyle(color: Color(0xFFE5E7EB)),
                            ),
                          ],
                        ),

                        Row(
                          spacing: 5.0,
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: colors.success,
                            ),
                            Text(
                              "14320 kg",
                              style: TextStyle(color: colors.success),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView(
                  children: [
                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("1"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/peitoral.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Supino Inclinado com Barra"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("20")),
                                            DataCell(Text("12kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("15")),
                                            DataCell(Text("15kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("18kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("4")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("18kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("5")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("18kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("2"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/peitoral.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Supino Declinado com Barra"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("20kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("20kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("20kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("4")),
                                            DataCell(Text("6-8")),
                                            DataCell(Text("20kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("3"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/peitoral.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Supino Reto com Halteres"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("8-10")),
                                            DataCell(Text("16kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("8-10")),
                                            DataCell(Text("16kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("8-10")),
                                            DataCell(Text("16kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("4"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/peitoral.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Crucifixo Máquina"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("10 R.")),
                                            DataCell(Text("30kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("10 R.")),
                                            DataCell(Text("30kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("10 R.")),
                                            DataCell(Text("30kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("5"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/triceps.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Tríceps na Polia Barra V"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("10")),
                                            DataCell(Text("21kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("10")),
                                            DataCell(Text("21kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("10")),
                                            DataCell(Text("21kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("6"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/triceps.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Tríceps Mergulho"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("10")),
                                            DataCell(Text("12kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("10")),
                                            DataCell(Text("12kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("10")),
                                            DataCell(Text("12kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 15.0,
                                children: [
                                  Text("7"),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/triceps.png",
                                      width: 100,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Tríceps Francês Unilateral"),
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text("Séries")),
                                        DataColumn(label: Text("Reps")),
                                        DataColumn(label: Text("Carga")),
                                      ],
                                      rows: const [
                                        DataRow(
                                          cells: [
                                            DataCell(Text("1")),
                                            DataCell(Text("10")),
                                            DataCell(Text("8kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("2")),
                                            DataCell(Text("10")),
                                            DataCell(Text("8kg")),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(Text("3")),
                                            DataCell(Text("10")),
                                            DataCell(Text("8kg")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/training");
                  },
                  child: Text("Iniciar Treino"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
