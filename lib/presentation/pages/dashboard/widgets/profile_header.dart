import 'package:cached_network_image/cached_network_image.dart';
import 'package:eida/application/auth/auth_bloc.dart';
import 'package:eida/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String photoUrl;

  const ProfileHeader({Key? key, required this.name, required this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Welcome\nEida, $name!',
          style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 28),
        ),
        InkWell(
          onLongPress: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Are you sure you want to log out?'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: const Text('Log out'),
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.signedOut());
                        context.router.replaceAll([const SignInRoute()]);
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                photoUrl,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
