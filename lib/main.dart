import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/routes/app_router.dart';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerProv = ref.watch(routerProvider);
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerProv,
      title: 'App de Rally WRC',
      //
    );
  }
}
