import 'package:baithuctap1/data/global_variebles.dart';
import 'package:flutter/material.dart';

class ListProviderDanhMuc with ChangeNotifier{
  List<Map<String,dynamic>> _datas = dataList;
  List<Map<String,dynamic>> get datas => _datas;

  bool _isColorButton1 = true;
  bool get isColorButton1 =>_isColorButton1;
  bool _isColorButton2 = false;
  bool get isColorButton2 =>_isColorButton2;
  bool _isColorButton3 = false;
  bool get isColorButton3 =>_isColorButton3;

  void activeButton1(){
    _isColorButton1 = true;
    _isColorButton2 = false;
    _isColorButton3 = false;
  }
  void activeButton2(){
    _isColorButton1 = false;
    _isColorButton2 = true;
    _isColorButton3 = false;
  }
  void activeButton3(){
    _isColorButton1 = false;
    _isColorButton2 = false;
    _isColorButton3 = true;
  }

  bool _isSortAscending = true;
  bool get isSortAscending => _isSortAscending;

  //sắp xếp theo id
  void sortListId(){
    if(_isSortAscending){
      _dataDanhMuc.sort((a,b) => a['cophiues']['san'].compareTo(b['cophiues']['san']));
      _isSortAscending = false;
      //print(data);
    }
    else{
      _dataDanhMuc.sort((a,b) => a['cophiues']['san'].compareTo(b['cophiues']['san']));
      _isSortAscending = true;
      //print(data);
    }
    notifyListeners();
  }

  //sắp xếp theo giá
  void sortListPrice(){
    if(_isSortAscending){
      _object['cophiues'].sort((a,b) => a['price'].compareTo(b['price']));
      _isSortAscending = false;
      // print(datas);
    }
    else{
      _object['cophiues'].sort((a,b) => a['price'].compareTo(b['price'])); 
      _isSortAscending = true;
      // print(datas);
    }
    notifyListeners();
  }

  //sắp xếp theo khôi lượng
  void sortListWeight(){
    if(_isSortAscending){
      _datas.sort((a,b) => a['weight'].compareTo(b['weight']));
      _isSortAscending = false;
      // print(datas);
    }
    else{
      _datas.sort((b,a) => a['weight'].compareTo(b['weight']));
      _isSortAscending = true;
      // print(datas);
    }
    notifyListeners();
  }
  List<Map<String,dynamic>> _cart = [];
  List<Map<String,dynamic>> get cart => _cart;
  void addItem(Map<String,dynamic> item){
    _cart.add(item);
    notifyListeners();
  }
  void removeItem(Map<String,dynamic> item){
    _cart.remove(item);
    notifyListeners();
  }
  int changeIsSave(int check){
    if(check == 0) {
      return 1;
    }
    return 0;
  }

  List<Map<String,dynamic>> _dataDanhMuc =[];
  List<Map<String,dynamic>> get dataDanhMuc => _dataDanhMuc;
  List<Map<String,dynamic>> _cartCopy = [];

  void addDataDanhMuc(String text){
      _cartCopy = List<Map<String,dynamic>>.from(_cart);
     _dataDanhMuc.add(
    {
      'id' : _dataDanhMuc.length.toString(),
      'tendanhmuc' : text,
      'cophiues' : _cartCopy
    });
    print(_dataDanhMuc);
    notifyListeners();
  }

  // List<String> _danhmuc = danhmucs;
  // List<String> get danhmuc => _danhmuc;
  // String _bien = '';
  // void addDanhMuc(String text){
  //   _danhmuc.add(text);
  //   notifyListeners();
  // }
  // Map<String,dynamic> _object = {};
  // Map<String,dynamic> get object => _object;
  // int _selectIntem = -1;
  // int get selectItem => _selectIntem;
  // void layDoiTuong(Map<String,dynamic> object){
  //
  // }
  Map<String,dynamic> _object = {};
  Map<String,dynamic> get object => _object;
  // String _textDanhMuc = "";
  // String get textDanhMuc => _textDanhMuc;
  void InsertTextDanhMuc(Map<String,dynamic> ob){
    _object = ob;
    notifyListeners();
    print('Object: ${_object}');
  }

}