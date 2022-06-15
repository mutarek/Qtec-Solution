import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/controller/maincontroller.dart';

class ProductView extends StatefulWidget {

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  SampleController sampleController = Get.put(SampleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Obx(()=> sampleController.isLoading.value?Center(
        child: CircularProgressIndicator(

        ),
      ):Container(
        child: ListView.builder(
          itemCount: sampleController.sampleList.length,
          itemBuilder: (_,index){
            return ListTile(
              title: Text('testing'),
            );
          },
        ),
      )),
    );
  }
}
