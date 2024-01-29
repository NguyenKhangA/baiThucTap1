import 'package:baithuctap1/provider/provider_list_danhmuc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewKhung2 extends StatelessWidget{
  const ListViewKhung2 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Selector<ListProviderDanhMuc,Map<String,dynamic>>(
              selector: (context, listProviderDanhMuc) => listProviderDanhMuc.object,
              shouldRebuild: (context,listProviderDanhMuc) => true,
              builder: (context,datas,child){
                if(datas.isEmpty){
                  return Expanded(child: Container());
                }
                else{
                  if(datas['cophiues'] == null){
                    return Container();
                  }
                  else{
                    return ListView.builder(
                        itemCount: datas['cophiues'].length,
                        itemBuilder: (context,index){
                          final data = datas['cophiues'][index];
                          return Container(
                            margin: const EdgeInsets.only(top: 0),
                            child:  Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(data['san'],
                                                style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700,height: 1.5),),
                                              Text('  ${data['name']}',
                                                  style: const TextStyle(fontSize: 14,color: Colors.grey,)),
                                            ],
                                          ),
                                          Text(
                                              data['company'],
                                              style: const TextStyle(fontSize: 14,color: Colors.grey,) )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Text('${data['weight']}'
                                            ,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1.5),),
                                          Text('${data['price']}',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Text(
                                            data['weight_%'],
                                            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromRGBO(35, 134, 25, 1),height: 1.5),),
                                          Text(
                                            data['price_%']
                                            ,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(35, 134, 25, 1)),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(thickness: 1,height: 14,),
                              ],
                            ),
                          );
                        }
                    );
                  }
                }
              },
            )
        ),
      ],
    );
  }

}