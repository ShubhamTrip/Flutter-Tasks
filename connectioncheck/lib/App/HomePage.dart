import 'package:connectioncheck/Bloc/connecetivity_state.dart';
import 'package:connectioncheck/Bloc/connectivity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Internet Not Connected'),
          content: const Text('Please Connect to the internet to enjoy uninterrupted Services!'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
          child:BlocConsumer<ConnectivityBloc,ConnectivityState>(
            listener: (context,state){
              if(state is InternetDisconnectedState){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Disconnected"),
                      backgroundColor: Colors.red,
                    )
                );
                _dialogBuilder(context);
              }
              else if(state is InternetConnectedState){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Connected"),
                      backgroundColor: Colors.green,
                    )
                );
              }

            },

            builder: (context,state){
              if(state is InternetConnectedState){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.check_circle_outline,size: 80,color: Colors.green,),
                       Text("Connected")
                     ],
                   );
                  }
              else if(state is InternetDisconnectedState){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline,size: 80,color: Colors.red,),
                        Text("Disconnected")
                      ],
                    );
                  }
              else {
                    return const Text("Loading..");
                  }

                 }
          )

      ),
    );
  }
}
