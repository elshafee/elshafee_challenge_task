import 'package:flutter/material.dart';

class TitleDivider extends StatefulWidget {
  String trailling, leadig;

  TitleDivider({Key? key, required this.leadig, required this.trailling})
      : super(key: key);

  @override
  State<TitleDivider> createState() => _TitleDividerState();
}

class _TitleDividerState extends State<TitleDivider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.leadig,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          InkWell(
            child: Text(
              widget.trailling,
              style: TextStyle(color: Colors.blue[800], fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
