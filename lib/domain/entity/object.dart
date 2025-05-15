class Object{
  final int id;
  final int gameId;
  final String name;
  final String description;
  bool isActive;

  Object(
    {
      required this.id,
      required this.gameId,
      required this.name,
      required this.description,
      this.isActive = true,
    }
  );

  factory Object.fromJson(Map<String, dynamic> json) {
    return Object(
      id: json['id'],
      gameId: json['game_id'],
      name: json['name'],
      description: json['description'],
      isActive: json['is_active'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'game_id': gameId,
      'name': name,
      'description': description,
      'is_active': isActive,
    };
  }
}