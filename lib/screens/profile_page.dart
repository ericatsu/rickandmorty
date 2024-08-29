import 'package:rickandmorty/shared/exports.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> user;

  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileWidget(user: user),
            const SizedBox(height: 20),
            const Divider(thickness: 1, color: Colors.black),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.teal),
              title: const Text('Name'),
              subtitle: Text('${user['firstName']} ${user['lastName']}'),
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.teal),
              title: const Text('Email'),
              subtitle: Text(user['email']),
            ),
            ListTile(
              leading: const Icon(Icons.people, color: Colors.teal),
              title: const Text('Username'),
              subtitle: Text(user['username']),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final Map<String, dynamic> user;

  const ProfileWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(user['image']),
        ),
        const SizedBox(height: 16),
        Text(
          '${user['firstName']} ${user['lastName']}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          user['email'],
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
