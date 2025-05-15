class Object{
  final int id;
  final String name;
  final String description;
  bool isActive;

  Object(
    {
      required this.id,
      required this.name,
      required this.description,
      this.isActive = true,
    }
  );

  factory Object.fromJson(Map<String, dynamic> json) {
    return Object(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      isActive: json['is_active'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'description': description,
      'is_active': isActive,
    };
  }
}