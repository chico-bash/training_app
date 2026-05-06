import 'package:flutter/material.dart';
import 'package:training_app/utils/app_color.dart';

class TrainingActivePage extends StatelessWidget {
  const TrainingActivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Treino A", style: textTheme.titleLarge),
                Text("Peito e Tríceps", style: textTheme.bodyMedium),
              ],
            ),

            Text("1/7 exercícios", style: textTheme.bodyMedium),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 20,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Supino Reto com Barra",
                                    style: textTheme.bodyLarge,
                                  ),
                                  Text(
                                    "1/4 séries",
                                    style: textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Repetições",
                                        style: textTheme.labelLarge,
                                      ),
                                      Container(height: 8.0),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            borderRadius: BorderRadius.circular(
                                              500,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Icon(Icons.add),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: TextField(),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            borderRadius: BorderRadius.circular(
                                              500,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Icon(Icons.remove),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Carga",
                                        style: textTheme.labelLarge,
                                      ),
                                      Container(height: 8.0),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            borderRadius: BorderRadius.circular(
                                              500,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Icon(Icons.add),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: TextField(),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            borderRadius: BorderRadius.circular(
                                              500,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Icon(Icons.remove),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Concluir Série"),
                          ),
                          Container(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Descanso", style: textTheme.labelLarge),
                                  Text("01:00", style: textTheme.headlineLarge),
                                ],
                              ),

                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Color(0xFF2F6BFF),
                                ),
                                child: Text("Pausar"),
                              ),
                            ],
                          ),
                          Container(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Próximo Exercício", style: textTheme.titleLarge),
                    Container(height: 8.0),
                    Row(
                      spacing: 15,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/peitoral.png",
                            width: 40,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Text(
                          "Supino Inclinado com Halteres",
                          style: textTheme.labelLarge,
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
    );
  }
}
