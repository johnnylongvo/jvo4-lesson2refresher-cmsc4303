import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  static const routeName = '/myHomePage';

  final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState(); // _ is only within the file
  }
}

//state object define as state
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //private controller
  late _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

//when current state object is done, destructor is called
  @override
  void dispose() {
    super.dispose();
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have clicked this button:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            if (_counter < 0)
              const Text('Counter is negative')
            else if (_counter > 0)
              const Text(
                  'Counter is positive') //do not get comma until if/else state is done
            else
              const Text('Counter is zero'),
            for (int i = 0; i < _counter; i++) const Icon(Icons.ac_unit),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: con.add,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20.0,
          ),
          FloatingActionButton(
            //onPressed: _decrementCounter,
            onPressed: con.remove,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//private class controller
class _Controller {
  _MyHomePageState state;
  _Controller(this.state);

  void add() {
    //state._counter++;
    //state.setState();
    state.render(() {
      //update state to refresh screen
      state._counter++;
    });
  }

  void remove() {
    //state._counter--;
    //state.setState();
    state.render(() {
      //update state to refresh screen
      state._counter--;
    });
  }
}
