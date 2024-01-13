import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const Icon(
            Icons.notifications,  // Biểu tượng thông báo
            size: 50.0,  // Kích thước của biểu tượng
          ),
          Positioned(
            // Vị trí của số hiển thị
            top: 0,
            left: 20,
            child: Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,  // Màu nền của số thông báo
                borderRadius: BorderRadius.circular(10),  // Bo góc
              ),
              child: const Text(
                '5',  // Số hiển thị
                style: TextStyle(
                  color: Colors.white,  // Màu chữ của số hiển thị
                  fontSize: 12,  // Cỡ chữ của số hiển thị
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Screen3 extends StatelessWidget{
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen3'),
      ),
    );
  }
}
class Screen4 extends StatelessWidget{
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                ),
                child: const Text('Screen4'),
                onPressed: (){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      ),
                      child: Container(
                        child: IconButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.all(10)
                          ),
                          icon: Icon(Icons.add),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Screen5())
                            );
                          },
                        ),
                      ),
                    );
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Screen5 extends StatelessWidget{
  const Screen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Screen4()));
        }, icon: Icon(Icons.add)),
      ),
    );
  }
}
