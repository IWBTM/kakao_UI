class User {
  var backgroundImage;
  var name;
  var intro;

  User({this.backgroundImage, required this.name, required this.intro});


}
  final String _urlPrefix = "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

User me = User(backgroundImage: '${_urlPrefix}_me.jpg', name: '경민', intro: '새옹지마');

List<User> friends = [
User(backgroundImage: '${_urlPrefix}_man_1.jpg', name: '경민1', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_woman_1.jpg', name: '경민2', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_man_2.jpg', name: '경민3', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_woman_2.jpg', name: '경민4', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_man_3.jpg', name: '경민5', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_woman_3.jpg', name: '경민6', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_man_4.jpg', name: '경민7', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_woman_4.jpg', name: '경민8', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_man_5.jpg', name: '경민9', intro: '새옹지마'),
User(backgroundImage: '${_urlPrefix}_woman_5.jpg', name: '경민10', intro: '새옹지마'),
];