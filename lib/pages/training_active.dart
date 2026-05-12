import 'package:flutter/material.dart';

class TrainingActivePage extends StatelessWidget {
  const TrainingActivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),

                child: Column(
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

                            Text("1/4 séries", style: textTheme.bodyMedium),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              Text("Repetições", style: textTheme.labelLarge),

                              const SizedBox(height: 8),

                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {},

                                    borderRadius: BorderRadius.circular(500),

                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.add),
                                    ),
                                  ),

                                  const SizedBox(
                                    width: 100,
                                    child: TextField(),
                                  ),

                                  InkWell(
                                    onTap: () {},

                                    borderRadius: BorderRadius.circular(500),

                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.remove),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              Text("Carga", style: textTheme.labelLarge),

                              const SizedBox(height: 8),

                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {},

                                    borderRadius: BorderRadius.circular(500),

                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.add),
                                    ),
                                  ),

                                  const SizedBox(
                                    width: 100,
                                    child: TextField(),
                                  ),

                                  InkWell(
                                    onTap: () {},

                                    borderRadius: BorderRadius.circular(500),

                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.remove),
                                    ),
                                  ),
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

            Container(
              padding: const EdgeInsets.all(15),

              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/finish');
                    },

                    child: const Text("Concluir Série"),
                  ),

                  const SizedBox(height: 30),

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
                          foregroundColor: const Color(0xFF2F6BFF),
                        ),

                        child: const Text("Pausar"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text("Próximo Exercício", style: textTheme.titleLarge),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),

                        child: Image.asset(
                          "assets/images/peitoral.png",
                          width: 60,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: Text(
                          "Supino Inclinado com Halteres",
                          style: textTheme.labelLarge,
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
    );
  }
}
