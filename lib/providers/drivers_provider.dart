import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/responseTypes/drivers_response.dart';

final calendarListProvider = StateProvider((ref) => []);
final dioProvider = Provider<Dio>((ref) => Dio());
final getDrivers = FutureProvider.autoDispose((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('https://api.wrc.com/content/driver?class=WRC',
      options: Options(
        validateStatus: (status) => status! < 500,
      ));
  final driver = DriversResponse.fromJson(response.data);
  return driver;
});

// provider para obtener el piloto seleccionado, se utiliza el id del piloto para obtener la información del piloto seleccionado
final getDriver = FutureProvider.autoDispose.family((ref, id) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('https://api.wrc.com/content/driver/$id',
      options: Options(
        validateStatus: (status) => status! < 500,
      ));
  final driver = DriversResponse.fromJson(response.data);
  return driver;
});

// provider para obtener la imagen del piloto seleccionado, se utiliza el id del piloto para obtener la imagen (aunque no se utiliza en la app, se deja por si se necesita en un futuro)
final getDriverImage = FutureProvider.autoDispose.family((ref, id) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('https://api.wrc.com/content/driver/$id/image',
      options: Options(
        validateStatus: (status) => status! < 500,
      ));
  return response.data;
});
