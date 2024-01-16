import 'package:flutter/material.dart';

import 'icon.dart';

void main(){
  runApp(const MyCusTomApp());
}

class MyCusTomApp extends StatelessWidget {
  const MyCusTomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            title: const Text('Thêm danh mục mới'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            children: [
              Container(
                color: const Color.fromRGBO(255, 255, 255, 1),
                padding: const EdgeInsets.only(bottom: 12),
                child: Column(
                  children: [
                    Container(
                      margin:const EdgeInsets.only(left: 12,right: 12),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Tên danh mục",
                          hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4),fontSize: 16)
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(left: 12,right: 12,top: 14),
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            backgroundColor: const Color.fromRGBO(40, 60, 145, 1)
                          ),
                          child: const Text('Xác nhận',style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12,right: 12),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,size: 36),
                            hintText: 'Bạn đang tìm kiếm gì',
                            hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2))
                          ),
                                          ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 12,right: 12,top: 12),
                          child: ListView.builder(
                            itemCount: 30,
                              itemBuilder: (BuildContext context,int index){
                              return  const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text('VIX ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                              Text(' HOSE',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color.fromRGBO(0, 0, 0, 0.7)),)
                                            ],
                                          ),
                                          Text('Chứng khoán VIX'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          IconScreen()
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(thickness: 0.5,)
                                ],
                              );
                              }
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
