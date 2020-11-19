import 'package:house_party/http/webclients/product_webclient.dart';

class ProductListController {

  static ProductListController _instance = ProductListController._();
  final ProductWebClient _productWebClient = ProductWebClient();

  ProductListController._();

  static ProductListController get instance => _instance;
  get productWebClient => this.productWebClient;
}
