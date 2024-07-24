import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sql_query_practical/controller/sql_controller.dart';

class DataBaseScreen extends StatelessWidget {
  const DataBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DataBaseController dataBaseController = Get.put(DataBaseController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dataBaseController.addData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
