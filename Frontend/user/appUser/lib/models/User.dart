class User {
  int user_id;
  String nom;
  String prenom;
  String email;
  String adresse;
  String telephone;
  late final String password;

  User(this.user_id, this.nom, this.prenom, this.email, this.adresse,
      this.telephone);

  // Méthode factory pour convertir JSON en User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['user_id'], json['nom'], json['prenom'], json['email'],
        json['telephone'], json['adresse']);
  }

  // Méthode pour convertir User en JSON
  Map<String, dynamic> toJson() {
    return {
      'user_id': user_id,
      'nom': nom,
      'prenom': prenom,
      'email': email,
      'telephone': telephone,
      'adresse': adresse
    };
  }
}
