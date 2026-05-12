import 'package:flutter/material.dart';
import 'package:training_app/utils/app_color.dart';

class FinishTrainingPage extends StatelessWidget {
  const FinishTrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(title: Text("Resumo do treino")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 100,
                      color: colors.success,
                    ),
                    Text("Treino Concluído", style: textTheme.bodyLarge),
                    Container(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Volume Total",
                                    style: textTheme.labelLarge,
                                  ),
                                  Text("14500 kg", style: textTheme.bodyLarge),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Duração", style: textTheme.labelLarge),
                                  Text("1h 50m", style: textTheme.bodyLarge),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Exercícios",
                                    style: textTheme.labelLarge,
                                  ),
                                  Text("7", style: textTheme.bodyLarge),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Séries", style: textTheme.labelLarge),
                                  Text("28", style: textTheme.bodyLarge),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 20),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Observações",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        "/dashboard",
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text("Concluir"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
