import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sample_ui/utils/completed_dr_constants.dart';

class MonthlySalesScreen extends StatelessWidget {
  final List<double> monthlySales = [
    150, 170, 165, 241, 215, 180, 622, 1582
  ];

  MonthlySalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 500, // Set width as required
            padding: const EdgeInsets.all(16.0),
            child: MonthlySalesLineChart(monthlySales: monthlySales),
          ),
        ),
      ),
    );
  }
}

class MonthlySalesLineChart extends StatelessWidget {
  final List<double> monthlySales;

  const MonthlySalesLineChart({super.key, required this.monthlySales});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: false,
          horizontalInterval: 500,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey[300],
              strokeWidth: 1,
            );
          },
          drawVerticalLine: false,
        ),


        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              interval: 500, // Set interval for Y-axis labels
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                );
                return Text('${value.toInt()}', style: style);
              },
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                );
                switch (value.toInt()) {
                  case 0:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Jan', style: style));
                  case 1:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Feb', style: style));
                  case 2:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Mar', style: style));
                  case 3:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Apr', style: style));
                  case 4:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('May', style: style));
                  case 5:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Jun', style: style));
                  case 6:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Jul', style: style));
                  case 7:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Aug', style: style));
                  case 8:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Sep', style: style));
                  case 9:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Oct', style: style));
                  case 10:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Nov', style: style));
                  case 11:
                    return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: const Text('Dec', style: style));
                  default:
                    return const SizedBox.shrink();
                }
              },
              interval: 1, // Show one label per month
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: Colors.grey, width: 1),
        ),
        minY: 0, // Set a fixed minimum value for Y axis
        maxY: 3000, // Set a fixed maximum value for Y axis
        lineBarsData: [
          LineChartBarData(
            spots: monthlySales
                .asMap()
                .entries
                .map((entry) => FlSpot(entry.key.toDouble(), entry.value))
                .toList(),
            isCurved: true,
            color: AppColors.primaryColor,
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: AppColors.primaryColor.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
