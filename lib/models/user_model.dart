class UserModel {
  String? name;
  String? image;
  String? message;
  String? date;
  int? messageNotRead;
  bool? isRead;
  bool? isSend;

  UserModel(
      {this.name,
      this.image,
      this.message,
      this.date,
      this.messageNotRead,
      this.isRead,
      this.isSend});
}
