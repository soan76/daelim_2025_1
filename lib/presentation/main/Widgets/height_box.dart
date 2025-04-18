import 'package:daelim_2025_1/presentation/common/widgets/whitebox.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const HeightBox({super.key, required this.onChanged});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 175;

  @override
  Widget build(BuildContext context) {
    return Whitebox(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: Column(
        children: [
          //타이틀
          const Text(
            'Height (CM)',
            style: TextStyle(fontSize: 16, color: Color(0xFF081854)),
          ),
          //숫자
          Text(
            _height.toInt().toString(),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          Slider(
            min: 50,
            max: 300,
            value: _height,
            activeColor: Color(0xFF6c63FF),
            onChanged: (double val) {
              setState(() {
                _height = val;
              });
            },
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('50 cm', style: TextStyle(fontSize: 12)),
              Text('300 cm', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
