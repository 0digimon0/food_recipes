import 'package:flutter/material.dart';

class TabbarItemView extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  TabbarItemView({this.icon, this.label, this.onPressed, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: FlatButton(
        color: Colors.transparent,
        onPressed: () {
          onPressed();
        },
        child: isSelected
            ? SizedBox(
                child: Column(
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Text(
                        label,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            : SizedBox(
                child: Icon(
                  icon,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }
}
