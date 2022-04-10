import 'package:cached_network_image/cached_network_image.dart';
import 'package:eida/application/dashboard/dashboard_bloc.dart';
import 'package:eida/domain/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationList extends StatelessWidget {
  final Chat chat;
  final String name;
  final String messageText;
  final String imageUrl;
  const ConversationList({
    Key? key,
    required this.chat,
    required this.name,
    required this.messageText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSvg = imageUrl.contains('.svg');

    return InkWell(
      onTap: () {
        context.router.navigate(SavedChatRoute(chat: chat));
      },
      child: Dismissible(
        key: Key(chat.id.getOrCrash()),
        onDismissed: (_) {
          context.read<DashboardBloc>().add(DashboardEvent.deleteChat(chat));
          context.read<DashboardBloc>().add(const DashboardEvent.getSavedChats());
        },
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(height: 50, width: 50, child: isSvg ? SvgPicture.network(imageUrl) : CachedNetworkImage(imageUrl: imageUrl)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              messageText,
                              style: TextStyle(fontSize: 13, color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
