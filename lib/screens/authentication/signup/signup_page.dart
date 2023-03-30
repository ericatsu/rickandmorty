import 'package:fluttergraphql/shared/exports.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopRightRichText(
                  link: 'Login',
                  normal: 'Have an account',
                  onTap: () {
                    Get.to(
                      const SignInPage(),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.18,
                ),
                const Greetings(
                  greeting: 'Welcome',
                  type: 'Sign Up',
                ),
                SizedBox(
                  height: height * 0.18,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
