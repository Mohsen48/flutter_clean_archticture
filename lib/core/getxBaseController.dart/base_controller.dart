import 'package:get/get.dart';

class BaseController extends GetxController {
  RxBool networkServiceLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  // TODO: implement onStart
  InternalFinalCallback<void> get onStart => super.onStart;

  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
