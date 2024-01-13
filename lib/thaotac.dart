import 'package:baithuctap1/ThemDanhMuc.dart';
import 'package:flutter/material.dart';

class ThaoTac extends StatelessWidget{
  const ThaoTac({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      width: 310,
      child: Column(
        children: [
          Container(
            height: 230,
            width: 310,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(228, 228, 228, 1),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                  ),
                  child: const Text('Thao tác'),
                ),
                Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey,width: 1.0))
                          ),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyCusTomApp()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                            child: const Text('Thêm danh mục mới',style: TextStyle(fontSize: 16,color: Colors.black),),
                          ),
                        )),
                        Expanded(child: Container(
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey,width: 1.0))
                          ),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                            child: const Text('Chỉnh sửa danh mục',style: TextStyle(fontSize: 16,color: Colors.black)),
                          ),
                        )),
                        Expanded(child: Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                              ),
                            ),
                            child: const Text('Xóa danh mục',style: TextStyle(fontSize: 16,color: Color.fromRGBO(209, 51, 56, 1))),
                          ),
                        )),
                      ],

                    )),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
            ),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              child: const Text('Đóng',style: TextStyle(fontSize: 16,color: Colors.black),),
            ),
          )
        ],
      ),
    );
  }

}