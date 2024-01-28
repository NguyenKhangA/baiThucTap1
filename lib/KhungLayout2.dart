import 'package:baithuctap1/dong1layout2.dart';
import 'package:flutter/material.dart';

import 'listviewkhunglayout2.dart';

class KhungLayOut2 extends StatelessWidget{
  const KhungLayOut2({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10,left: 12,right: 12),
        child: Column(
          children: [
            const SapXep(),
            SizedBox(height: 10,),
            Expanded(
              child: ListViewKhung2()
            )
          ],
        ),
      ),
    );
  }

}