class Diary{
  final int id;
  final int gameId;
  final String title;
  final bool isActive;

  Diary(
    {
      required this.id, 
      required this.gameId,
      required this.title, 
      required this.isActive
    });

  factory Diary.fromJason(Map<String, dynamic> json){
    return Diary(
      id:json['id'], 
      gameId: json['game_id'],
      title: json['title'],
      isActive: json['is_active']);
  }

  Map<String, dynamic> toJson(){
    return {'id': id, 'game_id': gameId, 'title': title, 'is_active': isActive};
  }
    
}
