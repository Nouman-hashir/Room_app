import 'package:room/app.dart';

class MessagesScreen extends StatelessWidget {
  final String title;
  final String image;
  const MessagesScreen({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return CustomChatAppBar(
      title: title,
      image: image,
      child: AppPadding(
        child: Column(
          children: [
            10.verticalSpace,
            Expanded(
              child: Consumer<ChatProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    separatorBuilder: (context, index) => 10.verticalSpace,
                    itemCount: provider.messages.length,
                    itemBuilder: (context, index) {
                      final item = provider.messages[index];
                      return ChatBubble(
                        message: item.message,
                        isMe: item.isMe,
                        time: item.time,
                      );
                    },
                  );
                },
              ),
            ),
            Consumer<ChatProvider>(
              builder: (context, provider, child) {
                return provider.isTyping
                    ? Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Asim Ali is typing.....",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    : const SizedBox();
              },
            ),
            MessageInput(),
          ],
        ),
      ),
    );
  }
}
