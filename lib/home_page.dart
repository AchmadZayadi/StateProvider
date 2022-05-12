import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_provider/height_provider.dart';
import 'package:multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your Weight (Kg)",
            style: TextStyle(fontSize: 20),
          ),
          // NOTE : MENGGUNAKAN CONSUMER
          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, _) => Slider(
          //     min: 1,
          //     max: 100,
          //     value: weightProvider.weight,
          //     divisions: 100,
          //     label: weightProvider.weight.round().toString(),
          //     onChanged: (newValue) {
          //       weightProvider.weight = newValue;
          //     },
          //     thumbColor: Colors.blue,
          //     activeColor: Colors.blue,
          //     inactiveColor: Colors.blue.withOpacity(0.4),
          //   ),
          // ),
          Slider(
            min: 1,
            max: 100,
            value: weightProvider.weight,
            divisions: 100,
            label: weightProvider.weight.round().toString(),
            onChanged: (newValue) {
              weightProvider.weight = newValue;
            },
            thumbColor: Colors.blue,
            activeColor: Colors.blue,
            inactiveColor: Colors.blue.withOpacity(0.4),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Your Height (Cm)",
            style: TextStyle(fontSize: 20),
          ),

          //NOTE : MNGGUNAKAN CONSUMER
          // Consumer<HeightProvider>(
          //   builder: (context, heightProvider, _) => Slider(
          //     min: 1,
          //     max: 200,
          //     value: heightProvider.height,
          //     divisions: 200,
          //     label: heightProvider.height.round().toString(),
          //     onChanged: (newValue) {
          //       heightProvider.height = newValue;
          //     },
          //     thumbColor: Colors.red,
          //     activeColor: Colors.red,
          //     inactiveColor: Colors.red.withOpacity(0.4),
          //   ),
          // ),
          Slider(
            min: 1,
            max: 200,
            value: heightProvider.height,
            divisions: 200,
            label: heightProvider.height.round().toString(),
            onChanged: (newValue) {
              heightProvider.height = newValue;
            },
            thumbColor: Colors.red,
            activeColor: Colors.red,
            inactiveColor: Colors.red.withOpacity(0.4),
          ),
          const SizedBox(height: 40),

          // NOTE : MENGGUNAKAN CONSUMER
          // Consumer<WeightProvider>(
          //     builder: ((context, weightProvider, _) =>
          //         Consumer<HeightProvider>(
          //           builder: (context, heightProvider, _) => Text(
          //             "Your BMI :\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}",
          //             style:
          //                 TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          //             textAlign: TextAlign.center,
          //           ),
          //         )))

          Text(
            "Your BMI :\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
