import 'package:fluttergraphql/shared/exports.dart';
import 'package:fluttergraphql/shared/vadilator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _registerFormKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

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
                  height: height * 0.12,
                ),
                const Greetings(
                  greeting: 'Welcome',
                  type: 'Sign Up',
                ),
                Form(
                  key: _registerFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 12.0),
                        ElevatedTextFormField(
                          label: 'Name',
                          controller: _nameController,
                           focusNode: _focusName,
                          validator: (value) => Validator.validateName(
                            name: value,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Email',
                          controller: _emailController,
                          focusNode: _focusEmail,
                          validator: (value) => Validator.validateEmail(
                            email: value,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Password',
                          obscureText: true,
                          controller: _passwordController,
                          focusNode: _focusPassword,
                          validator: (value) => Validator.validatePassword(
                            password: value,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedTextFormField(
                          label: 'Confirm Password',
                          obscureText: true,
                          controller: _confirmPasswordController,
                          focusNode: _focusPassword,
                          validator: (value) => Validator.validatePassword(
                            password: value,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          height: height * 0.048,
                          width: width * 0.28,
                          decoration: BoxDecoration(
                            gradient: Palette.linecolor,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.teal),
                            
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                if (_registerFormKey.currentState?.validate() == true) {
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
                  height: height * 0.032,
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
                  height: height * 0.012,
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
