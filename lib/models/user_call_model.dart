enum Call {
  phone,
  video,
}

enum CallStatus {
  missed,
  outgoing,
  incoming;
}

class UserCallModel {
  String? name;
  String? image;
  String? date;
  Call? call;
  CallStatus? callStatus;
  int? missed;

  UserCallModel({
    this.name,
    this.image,
    this.call,
    this.date,
    this.callStatus,
    this.missed = 1,
  });
}

List<UserCallModel> calls = [
  UserCallModel(
    name: 'Lucas Sankey',
    image: 'lucas-sankey.jpg',
    date: '10:52 PM',
    call: Call.video,
    callStatus: CallStatus.outgoing,
  ),
  UserCallModel(
      name: 'aiony-haust',
      image: 'aiony-haust.jpg',
      date: '10:38 PM',
      call: Call.phone,
      callStatus: CallStatus.incoming,
      missed: 2),
  UserCallModel(
      name: 'Lucas Sankey',
      image: 'lucas-sankey.jpg',
      date: '8:30 PM',
      call: Call.phone,
      callStatus: CallStatus.missed,
      missed: 3),
  UserCallModel(
      name: 'Michael Frattaroli',
      image: 'michael-frattaroli.jpg',
      date: '8:08 AM',
      call: Call.video,
      callStatus: CallStatus.missed,
      missed: 1),
  UserCallModel(
      name: 'Foto Sushi',
      image: 'foto-sushi.jpg',
      date: '23/11/22',
      call: Call.phone,
      callStatus: CallStatus.outgoing,
      missed: 3),
  UserCallModel(
      name: 'Averie Woodard',
      image: 'averie-woodard.jpg',
      date: '23/11/22',
      call: Call.phone,
      callStatus: CallStatus.missed,
      missed: 4),
  UserCallModel(
    name: 'Michael Frattaroli',
    image: 'michael-frattaroli.jpg',
    date: '22/11/22',
    call: Call.phone,
    callStatus: CallStatus.outgoing,
  ),
  UserCallModel(
      name: 'Foto Sushi',
      image: 'foto-sushi.jpg',
      date: '21/11/22',
      call: Call.video,
      callStatus: CallStatus.missed,
      missed: 2),
  UserCallModel(
      name: 'Averie Woodard',
      image: 'averie-woodard.jpg',
      date: '21/11/22',
      call: Call.phone,
      callStatus: CallStatus.incoming,
      missed: 2),
  UserCallModel(
      name: 'Lucas Sankey',
      image: 'lucas-sankey.jpg',
      date: '20/11/22',
      call: Call.video,
      callStatus: CallStatus.missed,
      missed: 1),
  UserCallModel(
      name: 'aiony-haust',
      image: 'aiony-haust.jpg',
      date: '19/11/22',
      call: Call.phone,
      callStatus: CallStatus.missed,
      missed: 5),
  UserCallModel(
    name: 'Lucas Sankey',
    image: 'lucas-sankey.jpg',
    date: '19/11/22',
    call: Call.video,
    callStatus: CallStatus.incoming,
  ),
];
