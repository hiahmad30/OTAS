class NotificationModel {
  String discription;
  String notification;
  String photoUrl;
  String status;

  NotificationModel(
      {this.notification, this.discription, this.photoUrl, this.status});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    this.notification = json['notification'];
    this.discription = json['discription'];
    this.status = json['status'];
    this.photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notification'] = this.notification;
    data['discription'] = this.discription;
    data['status'] = this.status;
    data['photoUrl'] = this.photoUrl;
    return data;
  }
}
