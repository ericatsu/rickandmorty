import 'package:flutter/cupertino.dart';
import 'package:rickAndmorty/shared/exports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
       const AlertDialog(
              content: Text('Password reset link sent! Check your email'),
            );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.back)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Greetings(
                greeting: 'Enter your Email, we will send yu a password link',
                type: 'Forgot Password?',
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedTextFormField(
                label: 'Email',
                controller: _emailController,
                validator: (value) => Validator.validateEmail(
                  email: value,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  passwordReset();
                },
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
