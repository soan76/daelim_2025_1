import 'package:daelim_2025_1/app/router/app_route.dart';
import 'package:daelim_2025_1/presentation/common/widgets/whitebox.dart';
import 'package:daelim_2025_1/presentation/main/Widgets/gender_box.dart';
import 'package:daelim_2025_1/presentation/main/Widgets/height_box.dart';
import 'package:daelim_2025_1/presentation/main/Widgets/in_de_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;
  double _height = 0.0;
  Gender _gender = Gender.male;

  //bmi 계산
  void _onCalculated() {
    debugPrint('나이: $_age');
    debugPrint('몸무게: $_weight');
    debugPrint('나이: $_height');
    debugPrint('나이: $_gender');

    final chHeight = _height.round() / 100;

    final bmi = _weight / (chHeight * chHeight);

    debugPrint('BMI: $bmi');

    context.pushNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              //region 타이틀
              Text(
                'BMI CALCULATOR',
                style: TextStyle(fontSize: 18, color: Color(0xFF081854)),
              ),
              SizedBox(height: 25),

              //region 나이, 몸무게 입력
              Row(
                children: [
                  Expanded(child: InDeContainer(title: 'Age')),
                  SizedBox(width: 20),
                  Expanded(child: InDeContainer(title: 'Weight(kg)')),
                ],
              ),
              SizedBox(height: 25),

              //#region 키 입력
              HeightBox(
                onChanged: (height) {
                  _height = height;
                },
              ),

              //region 성별
              GenderBox(
                onChanged: (gender) {
                  _gender = gender;
                },
              ),

              //endregion
              SizedBox(height: 25),
              Whitebox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),
              SizedBox(height: 38),

              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: _onCalculated,
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildMainButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => context.go(AppRoute.result.toPath),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF6C63FF),
      ),
      child: Text('Calculate BMI'),
    ),
  );
}
