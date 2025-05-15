class Npc{
  final int id;
  final int gameId;
  final String name;
  final String description;
  bool isActive;
  bool isEnemy;

  Npc({
    required this.id,
    required this.gameId,
    required this.name,
    required this.description,
    this.isActive = true,
    this.isEnemy = false,
  });

  factory Npc.fromJson(Map<String, dynamic> json) {
    return Npc(
      id: json['id'],
      gameId: json['game_id'],
      name: json['name'],
      description: json['description'],
      isActive: json['is_active'],
      isEnemy: json['is_enemy'],
    );
  
  }

  Map<String, dynamic> toJson(){
      return {
      'id': id,
      'game_id': gameId,
      'name': name,
      'description': description,
      'is_active': isActive,
      'is_enemy': isEnemy,
    };
  }
}
