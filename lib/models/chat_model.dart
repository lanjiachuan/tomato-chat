class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Kal-El",
      message: "I need your help bro!",
      time: "15:30",
      avatarUrl:
          "https://vignette.wikia.nocookie.net/marvel_dc/images/c/ca/Superman_Chris_Reeve_01.jpg/revision/latest?cb=20071013035751"),
  new ChatModel(
      name: "Bruce Wayne",
      message: "I need a billion dollars",
      time: "17:30",
      avatarUrl:
          "http://media.comicbook.com/2015/12/bruce-wayne-grin-bvs-161475-161717.jpg"),
  new ChatModel(
      name: "Diana Prince",
      message: "I broke up with Steve",
      time: "5:00",
      avatarUrl:
          "https://pre00.deviantart.net/1d40/th/pre/i/2017/316/6/6/wonder_woman__diana_prince__by_petnick-dbtkeql.jpg"),
  new ChatModel(
      name: "Peter Parkar",
      message: "You have a metal arm?",
      time: "10:30",
      avatarUrl:
          "https://cdn.movieweb.com/img.news.tops/NEHBjrJHwWo3LJ_2_b/Venom-Movie-Peter-Parker-No-Spider-Man-Tom.jpg"),
  new ChatModel(
      name: "Barry Allen",
      message: "You are slow bitch!",
      time: "12:30",
      avatarUrl:
          "http://static.tvtropes.org/pmwiki/pub/images/1_258_5.jpg"),
  new ChatModel(
      name: "Eobard Thawne",
      message: "Well, well, well!",
      time: "15:30",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/a/ac/Reverse-Flash_%28Tom_Cavanagh%29.jpg/200px-Reverse-Flash_%28Tom_Cavanagh%29.jpg"),
  new ChatModel(
      name: "Doctor Octopus",
      message: "I need the fusion device",
      time: "15:30",
      avatarUrl:
          "https://pre00.deviantart.net/e750/th/pre/i/2015/181/5/5/03__doctor_octopus_by_green_mamba-d8ze5f7.png"),
  new ChatModel(
      name: "Tony Stark",
      message: "Mark 42!!!",
      time: "15:30",
      avatarUrl:
          "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/b/bb/Tony_Stark_Promo.jpg/revision/latest/scale-to-width-down/360?cb=20141129202546"),
];
