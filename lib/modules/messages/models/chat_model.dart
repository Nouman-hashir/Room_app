class ChartTileModel {
  final String name;
  final String image;

  ChartTileModel({
    required this.name,
    required this.image,
  });
}
class MessageModel {
  final String message;
  final bool isMe;
  final String time;

  MessageModel({
    required this.message,
    required this.isMe,
    required this.time,
  });
}