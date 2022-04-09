import 'package:eida/application/auth/auth_bloc.dart';
import 'package:eida/injection.dart';
import 'package:eida/presentation/pages/dashboard/widgets/conversation_list.dart';
import 'package:eida/presentation/pages/dashboard/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../routes/router.gr.dart';

class ChatUsers {
  final String text;
  final String secondaryText;
  final String image;
  final String time;
  ChatUsers(
      {required this.text,
      required this.secondaryText,
      required this.image,
      required this.time});
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  List<ChatUsers> chatUsersFn() => [
        ChatUsers(
            text: "Restaurant",
            secondaryText: "Awesome Setup",
            image: "https://ui-avatars.com/api/?name=Restaurant",
            time: ""),
      ];

  @override
  Widget build(BuildContext context) {
    final chatUsers = chatUsersFn();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => Container(),
                    authenticated: (user) => ProfileHeader(
                      name: user.name.getOrCrash(),
                      photoUrl: user.photoUrl.getOrCrash(),
                    ),
                  ),
                ),
                ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ConversationList(
                      name: chatUsers[index].text,
                      messageText: chatUsers[index].secondaryText,
                      imageUrl: chatUsers[index].image,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            showModalBottomSheet<void>(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 50,
              ),
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: 250,
                  color: Colors.white10,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Text(
                          'Select a topic',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 20),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            primary: Colors.blue[700],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            getIt<AppRouter>()
                                .navigate(ChatRoute(chatType: 'restaurant'));
                          },
                          icon: const Icon(Icons.restaurant),
                          label: const Text('Restaurant'),
                        ),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            primary: Colors.green[700],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            getIt<AppRouter>()
                                .navigate(ChatRoute(chatType: 'interview'));
                          },
                          icon: const Icon(Icons.file_copy_sharp),
                          label: const Text('   Interview  '),
                        ),
                        const SizedBox(height: 20),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            primary: Colors.red[900],
                          ),
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_outlined),
                          label: const Text('Back'),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          icon: const Icon(Icons.add),
          label: const Text('Start a conversation'),
          backgroundColor: const Color(0xff2972ff),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
