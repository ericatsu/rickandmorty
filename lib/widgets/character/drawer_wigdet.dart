import 'package:rickAndmorty/shared/exports.dart';

class DrawerWidget extends StatelessWidget {
   DrawerWidget({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                profileWidget(),
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
                  name: 'Feedbacks',
                  icon: Icons.message_outlined,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
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
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget profileWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("assets/images/splash.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Ricky Morty',
                style: TextStyle(fontSize: 14, color: Color(0xFF0B3C5D))),
            const SizedBox(
              height: 10,
            ),
            Text(user.email!,
                style: const TextStyle(fontSize: 14, color: Color(0xFF0B3C5D)))
          ],
        )
      ],
    );
  }
}
