import 'package:flutter/material.dart';
import 'package:training_app/utils/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Olá Francisco", style: textTheme.headlineLarge),
          Text("Bora treinar hoje? 💪", style: textTheme.bodyLarge),
          Card(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Resumo do dia",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE5E7EB),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),

                        child: Row(
                          children: [
                            Text(
                              "Ver histórico",
                              style: TextStyle(color: colors.info),
                            ),
                            Icon(Icons.arrow_right_rounded, color: colors.info),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: colors.info.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.calendar_month,
                              color: colors.info,
                            ),
                          ),
                          Text("Treinos", style: textTheme.bodyMedium),
                          Text("12", style: textTheme.headlineMedium),
                          Text("Esse mês", style: textTheme.bodyMedium),
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: colors.success.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.moving, color: colors.success),
                          ),
                          Text("Volume", style: textTheme.bodyMedium),
                          Text("18240", style: textTheme.headlineMedium),
                          Text("kg levantados", style: textTheme.bodyMedium),
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: colors.warning.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.local_fire_department,
                              color: colors.warning,
                            ),
                          ),
                          Text("Sequência", style: textTheme.bodyMedium),
                          Text("7", style: textTheme.headlineMedium),
                          Text("dias", style: textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Text("Próximo treino", style: textTheme.titleLarge),

          Card(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0F172A),
                    Color(0xFF111827),
                    Color(0xFF020617),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    "Treino A - Peito e Tríceps",
                    style: textTheme.titleLarge,
                  ),
                  Row(
                    spacing: 5.0,
                    children: [
                      Icon(Icons.calendar_month, color: Color(0xFF6B7280)),
                      Text("Hoje • 18:00", style: textTheme.bodyMedium),
                    ],
                  ),

                  Container(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(Icons.play_arrow_outlined, size: 24),
                          Text("Iniciar Treino"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Text("Últimos treinos", style: textTheme.titleLarge),

          Card(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xFF0B1220)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Icon(Icons.check_circle, color: colors.success),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Treino A - Peito e Tríceps"),
                                Text("22/05/2024 • 1h 05m"),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "14320 kg",
                              style: TextStyle(color: colors.success),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xFF0B1220)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Icon(Icons.error_outline, color: colors.danger),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Treino B - Costa e Bíceps"),
                                Text("20/05/2024 • 1h 10m"),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "16840 kg",
                              style: TextStyle(color: colors.danger),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Icon(Icons.timelapse, color: colors.info),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Treino C - Pernas e Ombros"),
                                Text("18/05/2024 • 1h 15m"),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "14320 kg",
                              style: TextStyle(color: colors.info),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
