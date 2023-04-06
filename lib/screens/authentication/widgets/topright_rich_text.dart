import 'package:rickAndmorty/shared/exports.dart';

class TopRightRichText extends StatelessWidget {
  final String normal;
  final String link;
  final VoidCallback onTap;
  const TopRightRichText(
      {super.key,
      required this.normal,
      required this.link,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration:  const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.teal, width: 1.2)),
        ),
        child: RichText(
          text: TextSpan(
            text: '$normal? ',
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            children: [
              TextSpan(
                  text: link,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                  recognizer: TapGestureRecognizer()..onTap = onTap),
            ],
          ),
        ),
      ),
    );
  }
}
