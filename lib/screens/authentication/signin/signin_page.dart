import 'package:fluttergraphql/shared/exports.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: height,
          color: const Color.fromARGB(255, 255, 255, 224),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TopRightRichText(link: 'Sign Up', normal: 'No account', onTap: () { 
                  Get.to(const SignUpPage(),);
                 },),
                 Greetings(greeting: 'Glad to see you back', type: 'Login',),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
