

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectableButton extends StatelessWidget {
  final String text;
  final bool selected;
  const SelectableButton({Key? key , required this.text , required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration:  BoxDecoration(
          color: selected ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12)
      ),
      alignment: Alignment.center,
      child: Text(text , style: TextStyle(color: selected ? Colors.white : Colors.black , fontSize: 14.sp),),
    );
  }
}
