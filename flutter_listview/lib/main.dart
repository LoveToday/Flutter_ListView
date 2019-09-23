import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vaffle"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//       scrollDirection: Axis.vertical,
//       children: <Widget>[

//         ListTile(
//           leading: Icon(
//             Icons.search,
//             color: Colors.red,
//             size: 30,
//             ),
//           title: Text("测试一下这个标题"),
//           subtitle: Text("产看他的二级标题啦啦啦啦啦啦啦啦啦绿绿绿啦啦绿绿绿啦绿绿绿"),
//         ),
//         ListTile(
//           title: Text("测试一下这个标题"),
//           subtitle: Text("产看他的二级标题啦啦啦啦啦啦啦啦啦绿绿绿啦啦绿绿绿啦绿绿绿"),
//           trailing: Icon(
//             Icons.settings,
//             color: Colors.red,
//             size: 30,
//             ),
//         ),
//         ListTile(
//           leading: Image.network("http://wimg.spriteapp.cn/picture/2018/1030/6e3e4c06dc1211e891ba842b2b4c75ab_wpd.jpg"),
//           title: Text("测试一下这个标题"),
//           subtitle: Text("产看他的二级标题啦啦啦啦啦啦啦啦啦绿绿绿啦啦绿绿绿啦绿绿绿"),
//         ),
//         ListTile(
//           leading: Image.asset("images/flutter01.jpg"),
//           title: Text("测试一下这个标题"),
//           subtitle: Text("产看他的二级标题啦啦啦啦啦啦啦啦啦绿绿绿啦啦绿绿绿啦绿绿绿"),
//         ),
//         ListTile(
//           leading: Image.asset("images/flutter01.jpg"),
//           title: Text("测试一下这个标题"),
//           subtitle: Text("产看他的二级标题啦啦啦啦啦啦啦啦啦绿绿绿啦啦绿绿绿啦绿绿绿"),
//           trailing: Image.asset("images/flutter02.jpeg"),
//         ),

//       ],
//     );
//   }
  
// }


class HomeContent extends StatelessWidget {

  List dataList = List();

  Widget _getListViewData(context, index){

    return ListTile(
      title: Text("加载第 $index 条数据"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30, 
      itemBuilder: _getListViewData,
      );
  }
  
}


