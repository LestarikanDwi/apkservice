import 'package:apkservice/models/kategori.dart';
import 'package:flutter/material.dart';


class DepanPage extends StatefulWidget {
  @override
  _DepanPageState createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  List<Kategori> kategorilist = [];

@override
  void initState() {
    super.initState();
  }
@override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
       
        child: 
            Text(
              'DepanPage',
            ),
           
         
      ),
     
    );
  }
}
