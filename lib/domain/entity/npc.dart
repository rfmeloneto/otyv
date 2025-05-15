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

  factory Npc.fromJson(Map<String, dynamic> json) {
    return Npc(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      isActive: json['is_active'],
      isEnemy: json['is_enemy'],
    );
  
  }

  Map<String, dynamic> toJson(){
      return {
      'id': id,
      'name': name,
      'description': description,
      'is_active': isActive,
      'is_enemy': isEnemy,
    };
  }
}
