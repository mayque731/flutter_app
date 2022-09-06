import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://www.pinterest.com/pin/359795457731075028/')),
            accountName: const Text('accountName'),
            accountEmail: const Text('accountEmail'),
          ),
        ],
      ),
    );
  }
}
