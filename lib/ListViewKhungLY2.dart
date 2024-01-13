import 'package:flutter/material.dart';

class ListViewKhung2 extends StatelessWidget{
  const ListViewKhung2 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('VIX ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,height: 1.5),),
                      Text(' HOSE',style: TextStyle(fontSize: 14,color: Colors.grey,)),
                    ],
                  ),
                  Text('NH TMCP Ngoại Thương',style: TextStyle(fontSize: 14,color: Colors.grey,) )
                ],
              ),
              Column(
                children: [
                  Text('27.38',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1.5),),
                  Text('10.000.000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                ],
              ),
              Column(
                children: [
                  Text('+00.89',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromRGBO(35, 134, 25, 1),height: 1.5),),
                  Text('+26.66%',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(35, 134, 25, 1)),),
                ],
              ),
            ],
          ),
          Divider(thickness: 1,height: 14,)
        ],
      ),
    );
  }

}