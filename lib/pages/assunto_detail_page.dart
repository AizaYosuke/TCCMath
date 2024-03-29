import 'package:flutter/material.dart';
import 'package:tccmath/models/assunto.dart';

class AssuntoDetailPge extends StatelessWidget {
  const AssuntoDetailPge({super.key});

  @override
  Widget build(BuildContext context) {
    final Assunto assunto =
        ModalRoute.of(context)!.settings.arguments as Assunto;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: const Text('Assunto'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(assunto.nome),
                  Text(
                    assunto.fonte,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              Text(assunto.conteudo),
            ],
          ),
        ),
      ),
    );
  }
}
