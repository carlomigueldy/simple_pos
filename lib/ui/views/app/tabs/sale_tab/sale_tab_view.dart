import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sale_tab_viewmodel.dart';

class SaleTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SaleTabViewModel>.reactive(
      viewModelBuilder: () => SaleTabViewModel(),
      builder: (
        BuildContext context,
        SaleTabViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'SaleTabView',
            ),
          ),
        );
      },
    );
  }
}
