import 'package:eight_app/theme/ui_borda.dart';
import 'package:eight_app/theme/ui_espaco.dart';
import 'package:flutter/material.dart';

class HistoriaSkeleton extends StatelessWidget {
  const HistoriaSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(UiEspaco.normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UiBorda.arredondada),
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: UiEspaco.pequeno),
          Container(
            width: 250,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UiBorda.arredondada),
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: UiEspaco.pequeno),
          Container(
            width: double.infinity,
            height: 16 * 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UiBorda.arredondada),
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: UiEspaco.pequeno),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    width: 60,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(UiBorda.arredondada),
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
