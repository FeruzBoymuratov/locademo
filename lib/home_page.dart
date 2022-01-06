import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text('welcome', style: TextStyle(color: Colors.black, fontSize: 17),).tr(),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      context.locale = Locale('fr', 'FR');
                    },
                    child: Text('French', style: TextStyle(color: Colors.white),).tr()
                ),
                SizedBox(width: 20,),
                FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      context.locale = Locale('kr', 'KR');

                    },
                    child: Text('Korean', style: TextStyle(color: Colors.white),).tr()
                ),
                SizedBox(width: 20,),
                FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      context.locale = Locale('jp', 'JP');
                    },
                    child: Text('Japanese', style: TextStyle(color: Colors.white),).tr()
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
