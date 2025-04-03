import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int _count = 0;

  //비즈니스 로직 분리
  void _handleIncreaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('flutter Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        //비즈니스로직 분리 - 코드 간소화
        onPressed: _handleIncreaseCount,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 30)),
              Text('$_count', style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
