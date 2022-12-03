
class Chat {
  String? image;
  String? title;
  String? content;
  String? time;
  String? count;

  Chat({this.image, this.title, this.content, this.time, this.count});
}

// chat 샘플 데이터 만들기

final String _urlPrefix = 'https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger';

List<Chat> chats = [
  Chat(
    image: '${_urlPrefix}_man_1.jpg',
    title: '홍길동',
    content: '오늘 저녁에 한국 축구해요',
    time: '오전 09시 30분',
    count: '0'
  ),
  Chat(
      image: '${_urlPrefix}_woman_1.jpg',
      title: '정도전',
      content: '개국 공신은 바로 나',
      time: '오전 11시 30분',
      count: '3'
  ),
];