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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(40, 60, 145, 1),
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    child: const Text('A - Z',style: TextStyle(color: Colors.white),)),
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
                      ),
                      child:const Row(
                        children: [
                          Text('Giá',style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),),
                          Icon(Icons.arrow_drop_down,color: Colors.grey,)
                        ],
                      ) ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
                      ),
                      child:const Row(
                        children: [
                          Text('Khối lượng',style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),),
                          Icon(Icons.arrow_drop_down,color: Colors.grey,)
                        ],
                      ) ),
                )
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