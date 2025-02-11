import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedListStateExample extends StatefulWidget {
  const AnimatedListStateExample({super.key});

  @override
  State<AnimatedListStateExample> createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> items = [];
  void _addItem() {
    setState(() {
      items.insert(0, 'Item number ${items.length}');
      _listKey.currentState?.insertItem(0);
    });
  }

  void _removeItem(int idx) {
    setState(() {
      items.removeAt(idx);
      _listKey.currentState?.removeItem(
          idx,
          (context, animation) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ali'),
                    Icon(Icons.delete),
                  ],
                ),
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated List State',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: (context, index, animation) => SizeTransition(
          sizeFactor: animation,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(items[index]),
                GestureDetector(
                    onTap: () => _removeItem(index), child: Icon(Icons.delete)),
              ],
            ),
          ),
        ),
        initialItemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
