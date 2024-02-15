import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/routes/app_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Dashboard"),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const SizedBox(height: 20),
              CupertinoListSection(
                header: const Text("List of options:"),
                children: [
                  _buildOptionTile(
                      context, "Drivers", CupertinoIcons.person_2_fill, () {
                    ref.read(routerProvider).push(RoutesNames.drivers);
                  }),
                  _buildOptionTile(context, "Calendar", CupertinoIcons.calendar,
                      () {
                    ref.read(routerProvider).push(RoutesNames.calendar);
                  }),
                ],
              ),
              const SizedBox(height: 20),
              const Text("More Actions:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 100, 
                height: 50, 
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: CupertinoColors.activeBlue,
                  padding: const EdgeInsets
                      .symmetric(), 
                  child: const Text("Home Page"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 100, 
                height: 50, 
                child: CupertinoButton(
                  onPressed: () {
                    ref.read(routerProvider).push(RoutesNames.home);
                  },
                  color: CupertinoColors.activeBlue,
                  padding: const EdgeInsets.symmetric(),
                  child: const Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return CupertinoListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: const Icon(CupertinoIcons.right_chevron),
      onTap: onTap,
    );
  }
}
// Path: lib/pages/dashboard_page.dart