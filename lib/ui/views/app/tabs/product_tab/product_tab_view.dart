import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../../styles/constants.dart';
import 'product_tab_viewmodel.dart';

class ProductTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductTabViewModel>.reactive(
      viewModelBuilder: () => ProductTabViewModel(),
      builder: (
        BuildContext context,
        ProductTabViewModel model,
        Widget? child,
      ) {
        final theme = Theme.of(context);
        return Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsetsHelper.smallAll,
              child: Row(
                children: [
                  Text(
                    'Product Catalog',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsHelper.smallAll,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadiusHelper.smallAll,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsetsHelper.smallAll,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(20, (index) {
                    return Padding(
                      padding: EdgeInsetsHelper.extraSmallAll,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadiusHelper.smallAll,
                        ),
                        child: Center(
                          child: Text('Product ${index + 1}'),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
