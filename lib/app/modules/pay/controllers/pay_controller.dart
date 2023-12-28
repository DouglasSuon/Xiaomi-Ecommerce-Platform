import 'package:get/get.dart';

class PayController extends GetxController {
  RxList payList = [
    {
      "id": 1,
      "title": "支付宝支付",
      "checked": true,
      "image": "https://the-worlds-oldest-inkstick.jp/cdn/shop/articles/alipay11111.jpg?v=1653035313"

    },
    {
      "id": 2,
      "title": "微信支付",
      "checked": false,
      "image": "https://st.moneydata.hk/res/mojo_static/72a34d94668f7407912647232444279f.png"

    }
  ].obs;

  int payType = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  changePayList(index) {
    List<Map<String, Object>> tempList = [];
    for (var i = 0; i < payList.length; i++) {
      payList[i]["checked"] = false;
      tempList.add(payList[i]);
    }    
    tempList[index]["checked"] = true;
    payType=index;
    payList.value = tempList;
    update();
  }
}
