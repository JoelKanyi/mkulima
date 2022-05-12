import 'package:get/get.dart';

import '../services/dio_client.dart';

class ItemsController extends GetxController {
  var isLoading = true.obs;
  var itemsList = [].obs;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  void fetchItems() async {
    try {
      isLoading(true);
      var items = await DioClient.getCats();
      if (items != null) {
        itemsList.value = items;
      }
    } finally {
      isLoading(false);
    }
  }
}
