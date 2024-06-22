import 'package:flutter/material.dart';

class RouteNotFound extends StatelessWidget {
  const RouteNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.red,
            ),
            Text(
              'Pagina nao encontrada ou não existente',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.red,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
