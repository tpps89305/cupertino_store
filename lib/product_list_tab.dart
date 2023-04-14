import 'package:cupertino_store/model/app_state_model.dart';
import 'package:cupertino_store/product_row_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProductListTab extends StatelessWidget {
  const ProductListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();
        return CustomScrollView(
          semanticChildCount: products.length,
          slivers: [
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 0),
              sliver: SliverToBoxAdapter(
                child: CupertinoListSection(
                  topMargin: 0,
                  children: [
                    for (var product in products)
                      ProductRowItem(product: product)
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
