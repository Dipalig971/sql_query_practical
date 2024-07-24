import 'package:get/get.dart';

import '../helper/database_helper.dart';

class DataBaseController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initData();
  }

  void initData(){
    DatabaseHelper.databaseHelper.initDatabase();
  }

  void addData(){
    DatabaseHelper.databaseHelper.insertData();
  }
}