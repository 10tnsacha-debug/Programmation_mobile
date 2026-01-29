import 'package:flutter/widgets.dart';
import 'package:formation_flutter/model/product.dart';

class ProductInherited extends InheritedWidget {
  const ProductInherited({
    super.key,
    required this.product,
    required super.child,
  });

  final Product product;

  static ProductInherited of(BuildContext context) {
    final ProductInherited? result = context
        .dependOnInheritedWidgetOfExactType<ProductInherited>();
    assert(result != null, 'No ProductInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ProductInherited oldWidget) {
    return product != oldWidget.product;
  }
}
