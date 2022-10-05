import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/repository/dataLocal.dart';
import '../repository/dataAPI.dart';
import '../viewModels/homeViewModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List allData=[];
  var data = HomeViewModel(dataRepository: DataLocal());
  @override
  void initState() {
    allData = data.getAllData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.title),
        ),
        body: Container(
          child: Column(
            children: [
              Container(child: Text("DATA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), margin: EdgeInsets.only(top: 20),),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allData.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: Image.network("${allData[index].original}"),
                      );
                    }
                ),
              ),
              Container(child: Text("DATA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), margin: EdgeInsets.only(top: 20),),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allData.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: Image.network("${allData[index].original}"),
                      );
                    }
                ),
              ),
            ],
          ),
        )
    );
  }
}

