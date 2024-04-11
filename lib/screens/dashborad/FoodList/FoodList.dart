// import 'package:flutter/material.dart';
// import 'package:responsiveuiflutter/util/BaseListWidget.dart';
// import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:provider/provider.dart';
// import '../../../model/api/apidata/FoodList.dart';
// import '../../../screen_widget/InputTextField.dart';
// import '../FoodListModel.dart';
//
// class Dashboard extends BaseStatefulWidget{
//   @override
//   State<StatefulWidget> get layoutRes => DashboardState();
// }
// class DashboardState extends BaseListWidget<Dashboard>{
//   final PagingController<int, FoodList> pagingController = PagingController(firstPageKey: 0);
//
//   @override
//   void dispose() {
//     pagingController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final dashboardProvider = Provider.of<DashboardModel>(context);
//     pagingController.addPageRequestListener((pageKey) {
//       dashboardProvider.fetchPage(pagingController,pageKey);
//     });
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       title: Text("Dashboard")),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(top: 20,left: 30,right: 30),
//               child: InputTextField(hint: "Search",callback: (text)=>{
//               }),
//             ),
//             Expanded(child: paginationListView<FoodList>(pagingController,(data) =>
//                 GestureDetector(
//                   onTap: (){
//                     showToast(data.title??"");
//                   },
//                   child: Center(
//                     child: listItem(data),
//                   ),
//                 ), () {
//               pagingController.refresh();
//             }),)
//           ],
//         ),
//       )
//     );
//   }
//
//
//   Widget listItem(FoodList data){
//     return Card(
//       margin: EdgeInsets.only(left: 30,right: 30,top:15),
//         elevation: 4, // Set the elevation of the card
//         shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),),
//         child: Container(
//         padding: const EdgeInsets.only(left:20,top:10,right: 20,bottom:10),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(50.0),
//               child: Image.network(
//                 "https://picsum.photos/200",
//                 width: 80, // Adjust width as needed
//                 height: 80, // Adjust height as needed
//                 fit: BoxFit.cover, // Image fit
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.white12,
//                 padding: EdgeInsets.only(left: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                       Container(
//                           width: double.maxFinite,
//                           child: Text(data.title??"",
//                               maxLines: 2, // Set the maximum number of lines
//                               overflow: TextOverflow.ellipsis
//                           )
//                       ),
//                     Container(
//                         margin: EdgeInsets.only(top: 10.0),
//                         width: double.maxFinite,
//                         child: Text(data.url??"",
//                             maxLines: 2, // Set the maximum number of lines
//                             overflow: TextOverflow.ellipsis
//                         )
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//
// }