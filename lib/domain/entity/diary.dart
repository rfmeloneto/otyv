class Diary{
  int id;
  String title;

  Diary(this.id, this.title);

  factory Diary.fromJason(Map<String, dynamic> json){
    return Diary(json['id'], json['title']);
  }

  Map<String, dynamic> toJson(){
    return {'id': id, 'title': title};
  }
    
}
