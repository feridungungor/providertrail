import 'package:flutter/material.dart';
import 'package:flutter_provider_trial/screens/enemy_show.dart';
import 'package:flutter_provider_trial/state/enemy_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EnemyShowPage(),
      ),
      providers: <SingleChildCloneableWidget>[ChangeNotifierProvider(builder: (context)=>EnemyState(),)],
    );
  }
}
