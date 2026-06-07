import 'package:ai38ai/model/user_model.dart';
import 'package:ai38ai/viewmodel/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<UserModel> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserViewModel>().getAllUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<UserViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vm.allUsers == null
                ? Text("Item not found")
                : vm.loading == true
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: vm.allUsers!.length,
                    itemBuilder: (context, index) {
                      final data = vm.allUsers![index];
                      return ListTile(
                        leading: Spacer(),
                        title: Text(data.name),
                        subtitle: Column(children: []),
                        trailing: Spacer(),
                      );
                    },
                  ),
            //
            // SizedBox(
            //   height: 120,
            //   child: ListView.builder(
            //       itemCount: list.length,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return Column(
            //           children: [
            //            // CircleAvatar(
            //            //  radius: 20
            //            //   backgroundImage: AssetImage(list[index].image),
            //            // ),
            //             Image.asset(list[index].image,height: 60,width: 60,),
            //             Text(list[index].name),
            //           ],
            //         );
            //       }
            //   ),
            // ),
            //
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: list.length,
            //   itemBuilder: (context,index) => Column(
            //     children: [
            //       Row(
            //         children: [
            //           Expanded(
            //             flex: 5,
            //             child: Row(
            //               children: [
            //                 CircleAvatar(
            //                   radius: 10,
            //                   backgroundImage: AssetImage(list[index].image),
            //                 ),
            //                 Text(list[index].name),
            //               ],
            //             ),
            //           ),
            //
            //           Expanded(
            //               flex: 1,
            //               child: Icon(Icons.more_horiz))
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            //
            //
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
            // SizedBox(
            //   height: 200,
            //   child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            // ),
          ],
        ),
      ),
    );
  }
}
