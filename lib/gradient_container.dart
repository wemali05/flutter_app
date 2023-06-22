import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 3, 0, 8),
        color2 = const Color.fromARGB(255, 77, 20, 175);

//  final List<Color> colors;
  final Color color1;
  final Color color2;

  var activeImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeImage = 'assets/images/dice-4.png';
    print('dice changed');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeImage,
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll dice!'))
          ],
        ),
      ),
    );
  }
}
