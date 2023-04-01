class UserModel {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  UserModel({this.id, this.name, this.year, this.color, this.pantoneValue});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      year: json['year'],
      color: json['color'],
      pantoneValue: json['pantone_value'],
    );
  
  }

  Map<String, dynamic> toJson() {
    return{
    'id':id,
    'name':name,
   'year':year,
    'color':color,
    'pantone_value':pantoneValue,
    
    };
  }
}
