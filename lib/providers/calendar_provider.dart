import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:movil_wrc_app/responseTypes/calendar_response.dart';
final dioProvider = Provider<Dio>((ref) => Dio());
final getCalendar = FutureProvider.autoDispose((ref) async{
  final dio = ref.watch(dioProvider);
  final response = await dio.get(
    'https://api.wrc.com/content/filters/calendar?championship=wrc&origin=vcms&year=2024',
    options:Options(
      validateStatus: (status) => status! < 500,
    )
  );

  // Este provider responde con un objeto de tipo CalendarResponse con datos Json de la API de WRC 
  
  final calendar = CalendarResponse.fromJson(response.data);
  return calendar;
});

// Path: lib/pages/calendar_page.dart
// Compare this snippet from lib/pages/pages.dart:
// export '/pages/calendar_page.dart';
// export '/pages/dashboard_page.dart';
// export '/pages/drivers_page.dart';
// export '/pages/home_page.dart';
