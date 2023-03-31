import 'package:fluttergraphql/shared/exports.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
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
                  link: 'Sign Up',
                  normal: 'No account',
                  onTap: () {
                    Get.to(
                      const SignUpPage(),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                const Greetings(
                  greeting: 'Glad to see you back',
                  type: 'Login',
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Email',
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email address';
                            }
                            if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Password',
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 6) {
                              return 'Your password must be at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.045,
                        ),
                        SizedBox(
                          height: height * 0.06,
                          width: width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              BoxButton(
                                image: Images.rightarrow,
                                onTap: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or sign up with',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: height * 0.06,
                    width: width * 0.8,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BoxButton(
                            image: Images.google,
                            onTap: () {},
                          ),
                          BoxButton(
                            image: Images.twitter,
                            onTap: () {},
                          ),
                          BoxButton(
                            image: Images.apple,
                            onTap: () {},
                          ),
                          BoxButton(
                            image: Images.github,
                            onTap: () {},
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
