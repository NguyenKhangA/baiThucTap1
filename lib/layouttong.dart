
import 'package:flutter/material.dart';

import 'KhungLayout1.dart';
import 'KhungLayout2.dart';

class LayoutTong extends StatelessWidget {
  const LayoutTong({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Bảng giá',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.menu))
            ],
          ),
          body: const Column(
            children: [
              KhungLayout1(),
              Divider(thickness: 1,
                height: 1,),
              KhungLayOut2(),
              Divider(thickness: 1,height: 1,)
            ],
          ),
        )
    );
  }
}
