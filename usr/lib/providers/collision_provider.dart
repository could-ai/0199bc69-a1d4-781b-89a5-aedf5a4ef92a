import 'package:flutter/material.dart';
import '../models/collision.dart';

class CollisionProvider with ChangeNotifier {
  final List<Collision> _collisions = [
    Collision(
      id: '1',
      vehicle: 'Camión A',
      driver: 'Juan Pérez',
      date: DateTime.now(),
      location: 'Carretera Principal, Km 25',
      description: 'Colisión frontal con otro vehículo.',
    ),
    Collision(
      id: '2',
      vehicle: 'Camión B',
      driver: 'Ana Gómez',
      date: DateTime.now().subtract(const Duration(days: 1)),
      location: 'Avenida Central, esquina con Calle 5',
      description: 'Impacto lateral en una intersección.',
    ),
  ];

  List<Collision> get collisions => _collisions;

  void addCollision(Collision collision) {
    _collisions.add(collision);
    notifyListeners();
  }
}
