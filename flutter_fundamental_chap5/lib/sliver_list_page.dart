import 'package:flutter/material.dart';

class SliverListPage extends StatelessWidget {
  // 'No. 0'에서 'No. 49'까지 표시하는 ListTile을 담은 리스트
  final _items = List.generate(50, (i) => ListTile(title: Text('No. $i')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.asset(
                'assets/sample.jpg',
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset('assets/github_icon.png'),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}
