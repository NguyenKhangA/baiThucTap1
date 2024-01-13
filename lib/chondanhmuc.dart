import 'package:flutter/material.dart';

class ChonDanhMuc extends StatelessWidget{
  const ChonDanhMuc({super.key});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20,left: 100),
              child: const Text('Chọn danh mục',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 60),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                icon: const Icon(Icons.close,size: 20,color: Color.fromRGBO(29, 26, 41, 1),),
              ))
          ],
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(left: 16,right: 16),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            borderRadius: BorderRadius.circular(15)
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              hintText: "Tìm kiếm",
              hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4) ,fontSize: 15,fontWeight: FontWeight.w400)

            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(12),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Xem nhanh 1',style: TextStyle(fontSize: 16),),
                  Icon(Icons.arrow_forward_ios,size: 20,)
                ],
              ),
              Divider(height: 24,thickness: 0.5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Đầu tư công',style: TextStyle(fontSize: 16),),
                  Icon(Icons.arrow_forward_ios,size: 20,)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

}