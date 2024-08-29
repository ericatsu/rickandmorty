import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickandmorty/shared/exports.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> signIn() async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username,
          'password': password,
          'expiresInMins': 30,
        }),
      );

      if (response.statusCode == 200) {
        final user = jsonDecode(response.body);
        Get.snackbar('Success', 'Logged in successfully');
        Get.offNamed('/main', arguments: user);
      } else {
        Get.snackbar('Error', 'Invalid credentials');
      }
    } catch (error) {
      Get.snackbar('Error', 'An error occurred. Please try again.');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

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
        SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopRightRichText(
                    link: 'Sign Up',
                    normal: 'No account',
                    onTap: () {
                      // Get.to(
                      //   const SignUpPage(),
                      // );
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
                            label: 'Username',
                            controller: _usernameController,
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedTextFormField(
                            label: 'Password',
                            obscureText: true,
                            controller: _passwordController,
                            validator: (value) => Validator.validatePassword(
                              password: value,
                            ),
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
                                  onTap: () {
                                    Get.to(const ForgetPassword());
                                  },
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
                                  onTap: () {
                                    signIn();
                                  },
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
        ),
      ]),
    );
  }
}
