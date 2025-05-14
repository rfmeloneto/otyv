class Npc{
  final int id;
  final String name;
  final String description;
  bool isActive;
  bool isEnemy;

  Npc({
    required this.id,
    required this.name,
    required this.description,
    this.isActive = true,
    this.isEnemy = false,
  });

}