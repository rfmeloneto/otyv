class Memory{
  final String id;
  final String title;
  final String description;
  final bool isActive;
  final String imageUrl;

  Memory({
    required this.id,
    required this.title,
    required this.description,
    required this.isActive,
    required this.imageUrl,
  });

  factory Memory.fromJson(Map<String, dynamic> json) {
    return Memory(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isActive: json['isActive'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'title': title,
      'description': description,
      'isActive': isActive,
      'imageUrl': imageUrl,
    };
  }

  }
