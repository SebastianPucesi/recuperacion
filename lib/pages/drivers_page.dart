import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/providers/drivers_provider.dart';
import 'package:movil_wrc_app/widgets/tile_driver.dart';

class DriversPage extends ConsumerWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drivers = ref.watch(getDrivers);
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Drivers"),
        
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: SingleChildScrollView(
        child: drivers.when(
          loading: () => const Center(child: CupertinoActivityIndicator()),
          error: (_, error) => const Text("Error al conectar con la Base"), 
          data: (driverData){
            return Column(
              children: driverData.content.map((driverInfo) {
                return TileDriver(
                  imgUrlDriver: driverInfo.images.first.url,
                  imgUrlFlagCountry: driverInfo.country.flag.first.url,
                  nameDriver: driverInfo.name,
                  roleDriver: driverInfo.type,
                  team: driverInfo.team,
                  car: driverInfo.car);
              }).toList(),
            );
          }
          ),   
        ),
      ),
    );
  }
}
