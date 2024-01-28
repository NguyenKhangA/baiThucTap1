import 'package:baithuctap1/data/global_variebles.dart';
import 'package:baithuctap1/provider/provider_list_danhmuc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChonDanhMuc extends StatefulWidget{
  const ChonDanhMuc({super.key});

  @override
  State<ChonDanhMuc> createState() => _ChonDanhMucState();
}

class _ChonDanhMucState extends State<ChonDanhMuc> {
  List<String> displayItemSearch = [];

  TextEditingController _searchItem = TextEditingController();

  @override
  void initState(){
    super.initState();
    displayItemSearch = danhmucs;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child:  TextField(
            controller: _searchItem,
            onChanged: (value){
              _updateDisplay(value);
            },
            decoration: const InputDecoration(
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
        Selector<ListProviderDanhMuc,List<Map<String,dynamic>>>(
          selector: (context,list) => list.dataDanhMuc,
          shouldRebuild: (p,n)=>true,
          builder: (context,dataDanhMuc,child){
            return Expanded(
                child: ListView.builder(
                    itemCount: dataDanhMuc.length,
                    itemBuilder: (context,index){
                      final danhmuc = dataDanhMuc[index];
                      return Container(
                        margin: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(danhmuc['tendanhmuc'],
                                  style: const TextStyle(fontSize: 16),),
                                const Icon(Icons.arrow_forward_ios,size: 20,)
                              ],
                            ),
                            const Divider(height: 24,thickness: 0.5,),
                          ],
                        ),
                      );
                    }));
          },
        )

      ],
    );
  }
  void _updateDisplay(String value) {
    setState(() {
      if(value.isEmpty){
        displayItemSearch = danhmucs;
      }
      else{
        displayItemSearch = danhmucs.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
      }
    });
  }
}

