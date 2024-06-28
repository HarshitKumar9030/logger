import 'package:flutter/material.dart';
import 'package:logger/components/divider.dart';
import 'package:logger/components/sized_text.dart';

class CallDurationTile extends StatelessWidget {
  final double spacing;
  final List<String> labels;
  final List<String> values;
  const CallDurationTile({
    super.key,
    required this.labels,
    required this.values,
    this.spacing = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedText(
          "Call Duration",
          size: 20,
        ),
        SizedBox(
          height: spacing - 5,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color.fromARGB(250, 42, 40, 40)
                  : const Color.fromARGB(155, 240, 230, 255)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      labels[0],
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      values[0],
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const LogDivider(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      labels[1],
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      values[1],
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: spacing,
        ),
      ],
    );
  }
}
