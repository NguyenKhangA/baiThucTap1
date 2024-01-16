

import 'package:baithuctap1/buttonIcon.dart';
import 'package:baithuctap1/chondanhmuc.dart';
import 'package:baithuctap1/thaotac.dart';
import 'package:flutter/material.dart';

class KhungLayout1 extends StatelessWidget {
  const KhungLayout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Container(
        margin: const EdgeInsets.only(top: 12,bottom: 12,left: 12),
        child: Row(
          children: [
            ListView(
              scrollDirection:Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                IconButton(onPressed: (){
                  showModalBottomSheet(
                    useRootNavigator: true,
                    backgroundColor: Colors.transparent,
                      context: context, builder: (BuildContext context){
                    return ThaoTac();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(width: 1,color: Color.fromRGBO(230, 230, 230, 1))
                      )
                    ),
                    icon: const Icon(Icons.add,size: 25,color: Color.fromRGBO(40, 60, 145, 1),))
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(context: context,
                              useRootNavigator: true,
                              builder: (BuildContext context){
                            return Container(
                              height: 400,
                              decoration:const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                              ),
                              child: const ChonDanhMuc(),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(40, 60, 145, 1),
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        child: const Row(
                          children: [Text('Danh mục yêu thích',style: TextStyle(color: Colors.white),),
                          Icon(Icons.arrow_drop_down,color: Colors.white,)
                          ],
                        )),
                  ),
                  ButtonLayout1(label: 'VN30'),
                  ButtonLayout1(label: 'HNX'),
                  ButtonLayout1(label: 'VN30'),
                  ButtonLayout1(label: 'HNX'),
                ],
              ),
            ),
            const Divider(thickness: 1,)
          ],
        ),
      ),
    );
  }
}


