import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/providers/calendar_provider.dart';
import 'package:movil_wrc_app/widgets/tile_calendar.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarProv = ref.watch(getCalendar);
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Calenadio de Rallys WRC 2024 - 2025"),
        
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: calendarProv.when(
            loading: () => const Center(child: CupertinoActivityIndicator()),
            error: (_, error) => const Text("La base de datos no responde"),
            data: (calendarData) {
              return Column(
                children: calendarData.content.map((calendarEntry){
                  return TileCalendar(
                    imgUrlLocation: calendarEntry.images.first.url, 
                    imgUrlFlagCountry: calendarEntry.country.flag.first.url, 
                    nameRally: calendarEntry.title, 
                    nameCountry: calendarEntry.country.name, 
                    startDate: calendarEntry.startDate, 
                    endDate: calendarEntry.endDate);
                }).toList(),
              );
            }            
            )
        ),
      ),
    );
  }
}

// Path: lib/pages/calendar_page.dart
// Compare this snippet from lib/routes/app_router.dart:
// import 'package:flutter_riverpod/flutter_riverpod.dart';
