import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tccmath/models/assunto_list.dart';
import 'package:tccmath/utils/app_routes.dart';

class AssuntosPage extends StatelessWidget {
  const AssuntosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final assuntosList = Provider.of<AssuntoList>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Assuntos'),
      ),
      body: RefreshIndicator(
        onRefresh: () => assuntosList.loadAssuntos(),
        child: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () => assuntosList.loadAssuntos(),
            //   child: const Text('LoadAssuntos'),
            // ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: assuntosList.itemsCount,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.Assunto,
                        arguments: assuntosList.items[index],
                      );
                    },
                    title: Text(assuntosList.items[index].nome),
                    trailing: Text(assuntosList.items[index].fonte),
                    subtitle:
                        Text('${assuntosList.items[index].conteudo.length}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
