import 'package:cursito/pages/primera_page.dart';
import 'package:get/route_manager.dart';

routes() => [
      GetPage(
        name: '/login',
        page: () => PrimeraPage(),
      ),
    ];
