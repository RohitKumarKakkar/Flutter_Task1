import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, required this.id}) : super(key: key);

  String id;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Text(widget.id),
                onTap: () {
                  setState(() {
                    widget.id = "New Data On Click";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
