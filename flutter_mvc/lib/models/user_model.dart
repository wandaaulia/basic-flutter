class User {
  int id;
  String? name;
  
  User({required this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'],
      name: object['first_name'] + " " + object['last_name']
    );


  }}