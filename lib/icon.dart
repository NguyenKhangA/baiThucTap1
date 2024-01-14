import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});

  @override
  State<IconScreen> createState() => _IconState();
}

class _IconState extends State<IconScreen> {
  bool isClickIcon = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        isClickIcon = !isClickIcon;
      });
    },
        icon:  Container(
          child: Icon(isClickIcon?Icons.star:Icons.star_border_outlined,
          color: isClickIcon?const Color.fromRGBO(227, 151, 37, 1):const Color.fromRGBO(0, 0, 0, 0.4),),
        ),
    );
  }
}
