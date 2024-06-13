import 'package:chat_app_flutter/widgets/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticatedUser = FirebaseAuth.instance.currentUser!;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chats')
          .orderBy('createdAt', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No messages found.'),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('Something gone rouge...'),
          );
        }
        final loadedChats = snapshot.data!.docs;
        return ListView.builder(
            padding: const EdgeInsets.only(bottom: 40, left: 13, right: 13),
            reverse: true,
            itemCount: loadedChats.length,
            itemBuilder: (context, index) {
              final chatMessages = loadedChats[index].data();
              final nextChat = index + 1 < loadedChats.length
                  ? loadedChats[index + 1].data()
                  : null;
              final currentMsgUserId = chatMessages['userId'];
              final nextMsgUserId =
                  nextChat != null ? nextChat['userId'] : null;
              final nextIsSame = nextMsgUserId == currentMsgUserId;
              if (nextIsSame) {
                return MessageBubble.next(
                    message: chatMessages['text'],
                    isMe: authenticatedUser.uid == currentMsgUserId);
              } else {
                return MessageBubble.first(
                    userImage: chatMessages['userImage'],
                    username: chatMessages['username'],
                    message: chatMessages['text'],
                    isMe: authenticatedUser.uid == currentMsgUserId);
              }
            });
      },
    );
  }
}
