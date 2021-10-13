class UserData {
  String email;
  String name;
  String phone;
  String bvn;


  UserData({this.email, this.name, this.phone, this.bvn});

  factory UserData.fromMap(Map<String, dynamic> map) {
    return new UserData(
      email: map['email'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      bvn: map['bvn'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'email': this.email,
      'name': this.name,
      'phone': this.phone,
      'bvn': this.bvn,
    } as Map<String, dynamic>;
  }
}