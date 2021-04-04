import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'create_product_viewmodel.dart';

class CreateProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateProductViewModel>.reactive(
      viewModelBuilder: () => CreateProductViewModel(),
      builder: (
        BuildContext context,
        CreateProductViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'CreateProductView',
            ),
          ),
        );
      },
    );
  }
}
