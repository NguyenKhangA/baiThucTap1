import 'package:flutter/material.dart';

class SapXep extends StatefulWidget {

  const SapXep ({super.key});

  @override
  State<SapXep>  createState() => _State();
}

class _State extends State<SapXep> {
  bool isButton1 = true;
  bool isButton2 = false;
  bool isButton3 = false;

  void _onClickButton1(){
    setState(() {
      isButton1 = true;
      isButton2 = false;
      isButton3 = false;
    });
  }
  void _onClickButton2(){
    setState(() {
      isButton1 = false;
      isButton2 = true;
      isButton3 = false;
    });
  }
  void _onClickButton3(){
    setState(() {
      isButton1 = false;
      isButton2 = false;
      isButton3 = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: (){
          _onClickButton1();
        },
            style: ElevatedButton.styleFrom(
              backgroundColor: isButton1?const Color.fromRGBO(40, 60, 145, 1)
                  :Colors.white,
              padding: const EdgeInsets.only(left: 8,right: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
            ),
            child: Text(
              'A - Z',
              style: TextStyle(color: isButton1? Colors.white : const Color.fromRGBO(0, 0, 0, 0.4)),)
        ),
        Container(
          margin: const EdgeInsets.only(left: 4),
          child: ElevatedButton(
              onPressed: (){
            _onClickButton2();
          },
              style: ElevatedButton.styleFrom(
                  backgroundColor: isButton2?const Color.fromRGBO(40, 60, 145, 1):Colors.white,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
              ),
              child: Row(
                children: [
                  Text('Giá',style: TextStyle(color: isButton2? Colors.white : const Color.fromRGBO(0, 0, 0, 0.4)),),
                  Icon(Icons.arrow_drop_down,color: isButton2? Colors.white : const Color.fromRGBO(0, 0, 0, 0.4),)
                ],
              ) ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 4),
          child: ElevatedButton(onPressed: (){
            _onClickButton3();
          },
              style: ElevatedButton.styleFrom(
                  backgroundColor: isButton3?const Color.fromRGBO(40, 60, 145, 1):Colors.white,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
              ),
              child: Row(
                children: [
                  Text('Khối lượng',style: TextStyle(color: isButton3? Colors.white : const Color.fromRGBO(0, 0, 0, 0.4)),),
                  Icon(Icons.arrow_drop_down,color: isButton3?Colors.white : const Color.fromRGBO(0, 0, 0, 0.4) ,)
                ],
              ) ),
        )
      ],
    );
  }
}
