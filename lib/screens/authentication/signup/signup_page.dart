import 'package:fluttergraphql/shared/exports.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Confirm Password',
                          obscureText: true,
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Your password and confirmation do not match';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          height: height * 0.048,
                          width: width * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.teal,
                            border: Border.all(color: Colors.teal),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                if (_formKey.currentState?.validate() == true) {
                                  // Submit the form data
                                }
                              },
                              child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.045,
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
                  height: height * 0.02,
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
