import 'package:get/get.dart';

class CommonController extends GetxController {
  static CommonController instance = Get.find();

  var onHover = false.obs;

  setOnHoverToTrue() {
    onHover.value = true;
  }

  setOnHoverToFalse() {
    onHover.value = false;
  }

  var selectedActionItem = 0.obs;

  setselectedActionItemIndex(int index) {
    selectedActionItem.value = index;
  }
}
