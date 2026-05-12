import 'package:flutter/material.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Olá Francisco", style: textTheme.headlineLarge),
          Text(
            "Estes são os seus treinos. Deslize para o lado para excluir um treino.”",
            style: textTheme.bodyMedium,
          ),

          SizedBox(height: 20),

          Dismissible(
            key: Key("1"),
            confirmDismiss: (direction) async {
              return await showDialog(
                context: context,

                builder: (context) {
                  return AlertDialog(
                    title: Text("Remover treino"),
                    content: Text("Deseja realmente remover este treino?"),

                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },

                        child: Text("Cancelar"),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 2,
                          ),
                          child: Text("Remover"),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/training");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Treino A", style: textTheme.titleLarge),
                              Text(
                                "Peito e Tríceps",
                                style: textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Dismissible(
            key: Key("2"),
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/training");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Treino B", style: textTheme.titleLarge),
                              Text(
                                "Costas e Bíceps",
                                style: textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Dismissible(
            key: Key("3"),
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/training");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Treino C", style: textTheme.titleLarge),
                              Text(
                                "Pernas e Ombros",
                                style: textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(onPressed: () {}, child: Text("Novo Treino")),
          ),
        ],
      ),
    );
  }
}
