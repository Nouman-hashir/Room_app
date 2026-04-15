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
        horizontal: 20,
        child: Column(
          children: [
            20.verticalSpace,
            Expanded(
              child: Consumer<ChatProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    controller: provider.scrollController,
                    separatorBuilder: (context, index) => 10.verticalSpace,
                    itemCount: provider.messages.length,
                    itemBuilder: (context, index) {
                      final message = provider.messages[index];

                      return ChatBubble(
                        message: message.message,
                        isMe: message.isMe,
                        time: message.time,
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
                        padding: const EdgeInsets.only(
                          left: 5,
                          bottom: 5,
                          top: 5,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Asim Ali is typing.....",
                            style: TextStyle(color: AppColors.grey),
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
