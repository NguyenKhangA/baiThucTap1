import 'package:baithuctap1/home.dart';
import 'package:baithuctap1/provider/provider_list_danhmuc.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => ListProviderDanhMuc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}



