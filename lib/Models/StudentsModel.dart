class StudentModel {
  String status;
  String name;
  String email;
  String photoUrl;
  int counter;
  String degree;
  String passport;
  String address;
  String phone;
  StudentModel(
      {this.status,
      this.passport,
      this.counter,
      this.degree,
      this.email,
      this.name,
      this.address,
      this.photoUrl,
      this.phone});

  StudentModel.fromJson(Map<String, dynamic> json) {
    this.status = json['status'];
    this.name = json['name'];
    this.photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['status'] = this.status;
    data['photoUrl'] = this.photoUrl;
    return data;
  }
}
