import 'package:flutter/material.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Image.asset(
             "assets/images/adio.png",
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white, fontWeight: FontWeight.w500
              //fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_previous_sharp,
                        color: Color(0xFFB7935F),size: 40,
                      ),
                      label: Text(""),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(50),
                          primary: Colors.transparent,
                          elevation: 0.0)),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow_rounded,
                          color: Color(0xFFB7935F), size: 60),
                      label: Text(""),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(50),
                          primary: Colors.transparent,
                          elevation: 0.0)),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next_sharp,
                          color: Color(0xFFB7935F), size: 40),
                      label: Text(""),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(50),
                          primary: Colors.transparent,
                          elevation: 0.0)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}