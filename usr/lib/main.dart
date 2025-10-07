import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/collision_provider.dart';
import 'screens/collision_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @Override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CollisionProvider(),
      child: MaterialApp(
        title: 'Administrador de Colisiones',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CollisionListScreen(),
      ),
    );
  }
}
