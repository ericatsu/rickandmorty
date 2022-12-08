import 'package:flutter/material.dart';

import '../../model/drawer_model.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              profileWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.black,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerModel(
                name: 'Profie',
                icon: Icons.account_box_rounded,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerModel(
                name: 'Requests',
                icon: Icons.send_outlined,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerModel(
                name: 'Organization',
                icon: Icons.people,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerModel(
                name: 'feedbacks',
                icon: Icons.message_outlined,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerModel(
                name: 'Setting',
                icon: Icons.settings,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerModel(
                name: 'Log out',
                icon: Icons.logout,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget profileWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("images/splash.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('User Name',
                style: TextStyle(fontSize: 14, color: Color(0xFF0B3C5D))),
            SizedBox(
              height: 10,
            ),
            Text('user@email.com',
                style: TextStyle(fontSize: 14, color: Color(0xFF0B3C5D)))
          ],
        )
      ],
    );
  }
}
