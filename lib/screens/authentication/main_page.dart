import 'package:rickandmorty/shared/exports.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
        if (snapshot.hasData) {
          return const BottomNav();
        } else {
          return const SignInPage();
        }
      }),
    );
  }
}