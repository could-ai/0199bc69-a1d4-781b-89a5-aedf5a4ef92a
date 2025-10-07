import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/collision_provider.dart';

class CollisionListScreen extends StatelessWidget {
  const CollisionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colisiones'),
      ),
      body: Consumer<CollisionProvider>(
        builder: (context, provider, child) {
          if (provider.collisions.isEmpty) {
            return const Center(
              child: Text('No hay colisiones registradas.'),
            );
          }
          return ListView.builder(
            itemCount: provider.collisions.length,
            itemBuilder: (context, index) {
              final collision = provider.collisions[index];
              return ListTile(
                title: Text('Vehículo: \${collision.vehicle}'),
                subtitle: Text('Conductor: \${collision.driver}'),
                onTap: () {
                  // Navegar a la pantalla de detalles de la colisión
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar a la pantalla para agregar una nueva colisión
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
