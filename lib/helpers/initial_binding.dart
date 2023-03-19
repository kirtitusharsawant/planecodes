import 'package:get/get.dart';
import 'package:planecode/controllers/common_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CommonController());
  }
}
