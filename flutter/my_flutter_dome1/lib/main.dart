import 'package:flutter/material.dart';
import 'listdate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('my name is lietu')),
      body: listdome7(),
    ));
  }
}

class listdome7 extends StatelessWidget {
  List<Widget> _getListdate() {
    var templist = listdate.map((e) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          color: Colors.blue,
        ),
        child: Column(
          children: <Widget>[
            Image.network(e["image"]),
            Text(
              e['title'],
              style: TextStyle(color: Colors.yellow, fontSize: 16.0),
            ),
            Text(
              e['author'],
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      );
    });

    return templist.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      children: _getListdate(),
    );
  }
}

class listdome6 extends StatelessWidget {
  List<Widget> _thisgetdate() {
    List<Widget> list = new List();
    for (var i = 0; i < listdate.length; i++) {
      list.add(Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          color: Colors.blue,
        ),
        child: Text(
          listdate[i]["title"],
          style: TextStyle(color: Colors.yellow, fontSize: 16.0),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: EdgeInsets.all(20.0),
        childAspectRatio: 0.7,
        children: _thisgetdate());
  }
}

class listdome5 extends StatelessWidget {
  Widget _getlistdate(context, index) {
    return ListTile(
      leading: Image.network(listdate[index]["image"]),
      title: Text(listdate[index]['title']),
      subtitle: Text(listdate[index]["author"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listdate.length, itemBuilder: this._getlistdate);
  }
}

class listdome4 extends StatelessWidget {
  List list = new List();
  listdome4() {
    for (var i = 0; i < 20; i++) {
      this.list.add("我是第$i条数据");
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.list[index]),
        );
      },
    );
  }
}

class listdome3 extends StatelessWidget {
  List<Widget> _getDate() {
    var temlist = listdate.map((e) {
      return ListTile(
        leading: Image.network(e["image"]),
        title: Text(e["title"]),
        subtitle: Text(e["author"]),
      );
    });
    return temlist.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: this._getDate());
  }
}

class listdome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Image.network("https://pcdn.flutterchina.club/imgs/book.png")
      ],
    );
  }
}

class listdome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(30),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.apps,
            color: Colors.yellow,
            size: 30,
          ),
          trailing: Icon(Icons.repeat),
          title: Text(
            'my name is lietu',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('this is my wirte a flutter dome'),
        ),
        ListTile(
          leading: Image.network(
              'https://i2.gqxz.com/uploads/ueditor/image/20200401/1585731188170324.jpeg'),
          title: Text('my name is lietu'),
          subtitle: Text('this is my wirte a flutter dome'),
        ),
        ListTile(
          title: Text('my name is lietu'),
          subtitle: Text('this is my wirte a flutter dome'),
        ),
        ListTile(
          title: Text('my name is lietu'),
          subtitle: Text('this is my wirte a flutter dome'),
        )
      ],
    );
  }
}

class HomeAssasImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.asset(
          'images/1.jpg',
          fit: BoxFit.cover,
        ),
        width: 300.0,
        height: 300.0,
      ),
    );
  }
}

class HomeNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://pcdn.flutterchina.club/imgs/book.png",
            fit: BoxFit.cover,
            width: 300,
            height: 300,
          ),
        ),
        decoration: BoxDecoration(),
      ),
    );
  }
}

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.network(
          "https://pcdn.flutterchina.club/imgs/book.png",
          alignment: Alignment.topLeft,
//          color: Colors.red,
//          colorBlendMode: BlendMode.screen,
//          fit:BoxFit.cover ,
          repeat: ImageRepeat.repeatX,
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
//          color: Colors.yellow,
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
                image: NetworkImage(
                    'https://i0.hdslb.com/bfs/sycp/creative_img/202006/95cb01424144eca2a8ebe3cc5d701868.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class HomeConent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          'lietuasdasdsadasd',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.red,
              backgroundColor: Colors.cyan,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 1.0),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: EdgeInsets.all(20.0),
        transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
