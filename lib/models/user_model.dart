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

List<UserModel> users = [
  UserModel(
    name: 'Lucas Sankey',
    image: 'lucas-sankey.jpg',
    date: '10:52 PM',
    isRead: false,
    isSend: true,
    message:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    messageNotRead: 3,
  ),
  UserModel(
    name: 'aiony-haust',
    image: 'aiony-haust.jpg',
    date: '10:38 PM',
    isRead: true,
    isSend: false,
    message: 'There are many variations of passages of Lorem Ipsum available',
    messageNotRead: 0,
  ),
  UserModel(
    name: 'Michael Frattaroli',
    image: 'michael-frattaroli.jpg',
    date: '8:08 AM',
    isRead: false,
    isSend: true,
    message: 'The standard chunk of Lorem Ipsum used since the 1500s',
    messageNotRead: 1,
  ),
  UserModel(
    name: 'Foto Sushi',
    image: 'foto-sushi.jpg',
    date: '23/11/22',
    isRead: true,
    isSend: false,
    message: 'Hello im Lorem....',
    messageNotRead: 0,
  ),
  UserModel(
    name: 'Averie Woodard',
    image: 'averie-woodard.jpg',
    date: '23/11/22',
    isRead: true,
    isSend: true,
    message:
        'Contrary to popular belief, Lorem Ipsum is not simply random text',
    messageNotRead: 0,
  ),
];
