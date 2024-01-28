import 'package:baithuctap1/provider/provider_list_danhmuc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyCusTomApp extends StatefulWidget {
  const MyCusTomApp({super.key});

  @override
  State<MyCusTomApp> createState() => _MyCusTomAppState();
}

class _MyCusTomAppState extends State<MyCusTomApp> {
  final TextEditingController _textEditingController = TextEditingController();
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
                      child: TextField(
                        controller: _textEditingController,
                        decoration: const InputDecoration(
                          labelText: "Tên danh mục",
                          hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4),fontSize: 16)
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(left: 12,right: 12,top: 14),
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            String newItem = _textEditingController.text;
                            if(newItem.isNotEmpty){
                              Provider.of<ListProviderDanhMuc>(context,listen: false).addDataDanhMuc(newItem);
                              _textEditingController.clear();
                              _showSuccessMessage(context);
                            }
                            else{
                              _showErrorMessage(context, 'Tên danh mục không được để trống');
                            }
                          },
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
                        child: Selector<ListProviderDanhMuc,List<Map<String,dynamic>>>(
                          selector: (context,listprovider) => listprovider.datas,
                          shouldRebuild: (p,n) => true,
                          builder: (context,mylist,child){
                            return ListView.builder(
                                itemCount: mylist.length,
                                itemBuilder: (context,index){
                                  final item = mylist[index];
                                  return GestureDetector(
                                    onTap: (){
                                      item['isSave'] = Provider.of<ListProviderDanhMuc>(context,listen: false).changeIsSave(item['isSave']);
                                      if(item['isSave'] == 1){
                                        Provider.of<ListProviderDanhMuc>(context,listen: false).addItem(item);
                                      }
                                      else if(item['isSave'] == 0){
                                        Provider.of<ListProviderDanhMuc>(context,listen: false).removeItem(item);
                                      }
                                    },
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      item['san'],
                                                      style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                                    Text(' ${item['name']}',
                                                      style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color.fromRGBO(0, 0, 0, 0.7)),)
                                                  ],
                                                ),
                                                Text(item['company']),
                                              ],
                                            ),
                                            Icon(item['isSave'] == 1
                                                ? Icons.star
                                                : Icons.star_border_outlined
                                            ),
                                          ],
                                        ),
                                        const Divider(thickness: 0.5,)
                                      ],
                                    ),
                                  );
                                }
                            );
                          },
                        )
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

 _showErrorMessage(BuildContext context, String s) {
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(s),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: const Text('Đóng'))
          ],
        );
      });
}

 _showSuccessMessage(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('Thêm thành công'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: const Text('Đóng'))
          ],
        );
      });
}
