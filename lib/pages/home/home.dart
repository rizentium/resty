import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resty/pages/home/bloc/home_bloc.dart';
import 'package:resty/pages/home/widget/content.dart';
import 'package:resty/pages/home/widget/side-menu.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            // Adobe XD layer: 'Menu' (group)
            child: SideMenuWidget(),
          ),
          BlocProvider(
            create: (context) => HomeBloc()..add(HomeFetched()),
            child: Expanded(
              flex: 4,
              child: ContentWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
