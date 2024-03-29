import 'package:flutter/material.dart';
import 'package:tccmath/utils/app_routes.dart';
// import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final ref = FirebaseDatabase.instance.ref();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'Math App',
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.Assuntos,
                  );
                },
                child: const Text('Assuntos!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Teoremas!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Termos!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Tipos De Prova!'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Questões!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
