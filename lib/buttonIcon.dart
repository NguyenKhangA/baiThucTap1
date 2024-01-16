import 'package:flutter/material.dart';

class ButtonLayout1 extends StatelessWidget {
  final String label;
  const ButtonLayout1({super.key,
  required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(left: 12,right: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
          ),
          child: Text(label,style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4),)
          )
      ),
    );
  }
}
