import 'package:baithuctap1/provider/provider_list_danhmuc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SapXep extends StatefulWidget {
  const SapXep ({super.key});

  @override
  State<SapXep>  createState() => _State();
}

class _State extends State<SapXep> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Provider.of<ListProviderDanhMuc>(context).isColorButton1
                    ?Color.fromRGBO(40, 60, 145, 1)
                    : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                onPressed: (){
                  Provider.of<ListProviderDanhMuc>(context,listen: false).sortListId();
                  Provider.of<ListProviderDanhMuc>(context,listen: false).activeButton1();
                },
                child: Text(
                  'A - Z',
                  style: TextStyle(
                    color: Provider.of<ListProviderDanhMuc>(context).isColorButton1
                        ? Colors.white
                        : Color.fromRGBO(0, 0, 0, 0.4)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Provider.of<ListProviderDanhMuc>(context).isColorButton2
                    ? Color.fromRGBO(40, 60, 145, 1)
                    : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
                onPressed: (){
                  Provider.of<ListProviderDanhMuc>(context,listen: false).sortListPrice();
                  Provider.of<ListProviderDanhMuc>(context,listen: false).activeButton2();
                },
                child: Text(
                    'Giá',
                  style: TextStyle(
                      color: Provider.of<ListProviderDanhMuc>(context).isColorButton2
                          ? Colors.white
                          : Color.fromRGBO(0, 0, 0, 0.4)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Provider.of<ListProviderDanhMuc>(context).isColorButton3
                        ? Color.fromRGBO(40, 60, 145, 1)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
                onPressed: (){
                  Provider.of<ListProviderDanhMuc>(context,listen: false).sortListWeight();
                  Provider.of<ListProviderDanhMuc>(context,listen: false).activeButton3();
                },
                child: Text(
                  'Khối lượng',
                  style: TextStyle(
                      color: Provider.of<ListProviderDanhMuc>(context).isColorButton3
                          ? Colors.white
                          : Color.fromRGBO(0, 0, 0, 0.4)
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}


