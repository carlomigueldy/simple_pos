import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:simple_pos/ui/views/app/app_view.dart';
import 'package:simple_pos/ui/views/create_product/create_product_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: AppView,
      path: '/',
      initial: true,
    ),
    CupertinoRoute(
      page: CreateProductView,
      path: 'products/create',
    )
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
  ],
)
class AppSetup {}
