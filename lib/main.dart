import 'package:flutter/material.dart';
import 'package:tccmath/models/assunto_list.dart';
import 'package:tccmath/pages/assunto_detail_page.dart';
import 'package:tccmath/pages/assuntos_page.dart';
import 'package:tccmath/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:tccmath/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AssuntoList(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(241, 186, 44, 1),
            primary: const Color.fromRGBO(241, 174, 34, 1),
            secondary: const Color.fromRGBO(41, 172, 182, 1),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            return Theme.of(context).colorScheme.secondary;
          }))),
          useMaterial3: true,
        ),
        routes: {
          AppRoutes.Assuntos: (context) => const AssuntosPage(),
          AppRoutes.Assunto: (context) => const AssuntoDetailPge(),
        },
        home: const HomePage(),
      ),
    );
  }
}
