class Collision {
  final String id;
  final DateTime date;
  final String location;
  final String description;
  final List<String> vehiclesInvolved;

  Collision({
    required this.id,
    required this.date,
    required this.location,
    required this.description,
    required this.vehiclesInvolved,
  });
}
