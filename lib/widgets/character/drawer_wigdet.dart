import 'package:rickandmorty/shared/exports.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  final Map<String, dynamic> user;

  const DrawerWidget({Key? key, required this.user}) : super(key: key);

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
                  name: 'Profile',
                  icon: Icons.account_box_rounded,
                  onPressed: () {
                    Get.to(ProfilePage(user: user));
                  },
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
                  onPressed: () async {
                    await _handleLogout(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleLogout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    Get.offAll(() => const SignInPage());
  }

  Widget profileWidget() {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage:
              NetworkImage(user['image'] ?? 'https://via.placeholder.com/150'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user['firstName']} ${user['lastName']}',
              style: const TextStyle(fontSize: 14, color: Color(0xFF0B3C5D)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              user['email'],
              style: const TextStyle(fontSize: 14, color: Color(0xFF0B3C5D)),
            )
          ],
        )
      ],
    );
  }
}
