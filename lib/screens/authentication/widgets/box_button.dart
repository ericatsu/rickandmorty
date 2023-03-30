import 'package:fluttergraphql/shared/exports.dart';

class BoxButton extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  const BoxButton({super.key, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        border: Border.all(color: const Color.fromARGB(255, 170, 170, 170)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child:  Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}