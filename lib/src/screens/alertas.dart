import 'package:flutter/material.dart';
import 'package:time_chart/time_chart.dart';

class AlertasPage extends StatelessWidget{


  final data = [
    DateTimeRange(
      start: DateTime(2021,2,24,23,15),
      end: DateTime(2021,2,25,7,30),
    ),
    DateTimeRange(
      start: DateTime(2021,2,22,1,55),
      end: DateTime(2021,2,22,9,12),
    ),
    DateTimeRange(
      start: DateTime(2021,2,20,0,25),
      end: DateTime(2021,2,20,7,34),
    ),
    DateTimeRange(
      start: DateTime(2021,2,17,21,23),
      end: DateTime(2021,2,18,4,52),
    ),
    DateTimeRange(
      start: DateTime(2021,2,13,6,32),
      end: DateTime(2021,2,13,13,12),
    ),
    DateTimeRange(
      start: DateTime(2021,2,1,9,32),
      end: DateTime(2021,2,1,15,22),
    ),
    DateTimeRange(
      start: DateTime(2021,1,22,12,10),
      end: DateTime(2021,1,22,16,20),
    ),
  ];

  get sizedBox => null;


  @override
  Widget build(BuildContext context) {
    final sizedBox = const SizedBox(height: 16);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          appBar: AppBar(title: Center(child: const Text('Alertas'),),
          backgroundColor:  Colors.cyan[900],),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text('Monitoreo semanal de Sensor de Movimiento'),
                  TimeChart(
                    data: data,
                    viewMode: ViewMode.monthly,
                    barColor: Colors.cyan[800],
                  ),
                  sizedBox,


                  const Text('Monitoreo Mensual de Sensor de Movimiento'),
                  TimeChart(
                    data: data,
                    viewMode: ViewMode.weekly,
                    barColor: Colors.cyan[800],
                  ),
                  
                  
                  sizedBox,
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TimeChart({List<DateTimeRange> data, viewMode, Color barColor}) {}
}
