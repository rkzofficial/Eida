import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String photoUrl;

  const ProfileHeader({Key? key, required this.name, required this.photoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Welcome\nEida, $name!',
          style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 28),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              photoUrl,
            ),
          ),
        ),
      ],
    );
  }
}
