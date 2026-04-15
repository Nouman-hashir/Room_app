import '../../../app.dart';

class ChatProvider extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();
  List<MessageModel> messages = [
    MessageModel(
      message: "Hi, Thanks for adding me",
      isMe: false,
      time: "8:45 PM",
    ),
    MessageModel(
      message: "Hi, You are welcome!\nNice to meet you",
      isMe: true,
      time: "8:45 PM",
    ),
    MessageModel(message: "What are you doing ?", isMe: false, time: "8:45 PM"),
    MessageModel(message: "Nothing And You ?", isMe: true, time: "8:45 PM"),
  ];

  bool isTyping = false;
  void sendMessage(BuildContext context) {
    if (controller.text.trim().isEmpty) return;

    messages.add(
      MessageModel(message: controller.text, isMe: true, time: "Now"),
    );

    controller.clear();
      FocusScope.of(context).unfocus();
    notifyListeners();

    simulateReply();
  }

  void simulateReply() async {
    isTyping = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    messages.add(MessageModel(message: "Nice 👍", isMe: false, time: "Now"));

    isTyping = false;
    notifyListeners();
  }

  void scrollToBottom() {
  if (scrollController.hasClients) {
    scrollController.animateTo(
      scrollController.position.minScrollExtent, // because reverse = true
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
}
