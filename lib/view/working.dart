import 'package:flutter/material.dart';

class Working extends StatelessWidget {
  const Working({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This view is under construction.",
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Go to back",
                style: TextStyle(
                  color: Color.fromRGBO(4, 55, 163, 0.8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
