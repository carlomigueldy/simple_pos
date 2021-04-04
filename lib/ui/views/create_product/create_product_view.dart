import 'package:flutter/material.dart';
import 'package:simple_pos/ui/dumb_widgets/app_safe_area.dart';
import 'package:stacked/stacked.dart';

import '../../../styles/constants.dart';
import 'create_product_viewmodel.dart';

class CreateProductView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateProductViewModel>.reactive(
      viewModelBuilder: () => CreateProductViewModel(),
      builder: (
        BuildContext context,
        CreateProductViewModel model,
        Widget? child,
      ) {
        return AppSafeArea(
          child: Form(
            child: Scaffold(
              appBar: AppBar(
                title: Text('New Product'),
              ),
              body: ListView(
                children: [
                  Padding(
                    padding: EdgeInsetsHelper.largeAll,
                    child: Placeholder(
                      fallbackHeight: 300,
                    ),
                  ),
                  Center(
                    child: Text(
                      'CreateProductView',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
