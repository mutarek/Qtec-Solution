import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/views/product_view.dart';

void main(){
  runApp(GetMaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sample task'
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text('Search Products'),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Products"
                  ),
                  onChanged: (newvalue){
                    product = newvalue;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Get.to(ProductView(),arguments: product);
                  },
                  child: Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}
