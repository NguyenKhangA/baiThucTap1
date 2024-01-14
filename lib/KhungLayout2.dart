import 'package:baithuctap1/dong1layout2.dart';
import 'package:flutter/material.dart';

import 'ListViewKhungLY2.dart';

class KhungLayOut2 extends StatelessWidget{
  const KhungLayOut2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: Container(
        margin: const EdgeInsets.only(top: 10,left: 12,right: 12),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SapXep()
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context,int index){
                  return const ListViewKhung2();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

}