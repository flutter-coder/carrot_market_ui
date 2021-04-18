import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        // 1
        decoration: InputDecoration(
          // 2
          disabledBorder: _buildOutLineInputBorder(),
          // 3
          enabledBorder: _buildOutLineInputBorder(),
          // 4
          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          // 5
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          // 6
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          hintText: '좌동 주변 가게를 찾아 보세요.',
          hintStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      // 7
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
      // 8
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
