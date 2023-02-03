import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.emergency_recording,size: 30,color: Colors.grey,),
          Center(child: Text('Recorde',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: 'Inter-Regular.ttf'),)),

        ],
      ),
    );
  }
}
