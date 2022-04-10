import 'package:auto_route/auto_route.dart';
import 'package:eida/application/auth/auth_bloc.dart';
import 'package:eida/application/dashboard/dashboard_bloc.dart';
import 'package:eida/injection.dart';
import 'package:eida/presentation/pages/dashboard/widgets/conversation_list.dart';
import 'package:eida/presentation/pages/dashboard/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../routes/router.gr.dart';

class DashboardPage extends StatelessWidget with AutoRouteWrapper {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 25),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => Container(),
                    authenticated: (user) => ProfileHeader(
                      name: user.name.getOrCrash(),
                      photoUrl: user.photoUrl.getOrCrash(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                    return state.chats.isNotEmpty
                        ? Column(
                            children: [
                              const Divider(),
                              ListView.separated(
                                separatorBuilder: (context, index) => const Divider(),
                                itemCount: state.chats.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final chat = state.chats[index];
                                  return ConversationList(
                                    key: Key(chat.id.getOrCrash()),
                                    chat: chat,
                                    name: chat.type.getOrCrash().toUpperCase(),
                                    messageText: chat.chatItems.last.message.getOrCrash(),
                                    imageUrl: chat.type.getOrCrash() == 'restaurant'
                                        ? 'https://www.svgrepo.com/download/129117/restaurant.svg'
                                        : "https://ui-avatars.com/api/?name=${chat.type.getOrCrash()}]",
                                  );
                                },
                              ),
                              const Divider(),
                            ],
                          )
                        : const Center(
                            child: Text('There is no past conversations'),
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
                maxHeight: 250,
              ),
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              builder: (BuildContext context) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Text(
                        'Select a topic',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 20),
                      TextButton.icon(
                        style: TextButton.styleFrom(primary: Colors.blue[700]),
                        onPressed: () {
                          Navigator.pop(context);
                          getIt<AppRouter>().navigate(ChatRoute(chatType: 'restaurant'));
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
                          getIt<AppRouter>().navigate(ChatRoute(chatType: 'interview'));
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

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()..add(const DashboardEvent.getSavedChats()),
      child: this,
    );
  }
}
