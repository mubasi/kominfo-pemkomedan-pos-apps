import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app_mobile/utils/Constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return const Scaffold(
      body: HeaderSearch()
    );
  }
}

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: Constants.padding * 0.8),
        height: 500,
        child: const Text("hello"),
        // child: Stack(
        //   children:[
        //     Container(
        //       padding: EdgeInsets.only(
        //         left: Constants.padding,
        //         right: Constants.padding,
        //         bottom: 36 + Constants.padding,
        //       ),
        //       height: const MediaQueryData().size.height * 0.2 - 27,
        //       decoration: BoxDecoration(
        //         color: Constants.primaryColor,
        //         borderRadius: const BorderRadius.only(
        //           bottomLeft: Radius.circular(36),
        //           bottomRight: Radius.circular(36),
        //         ),
        //       ),
        //       child: Row(
        //         children: <Widget>[
        //           SizedBox(
        //             width: const MediaQueryData().size.width * 0.7,
        //             child: const AutoSizeText(
        //               'Header',
        //               style: TextStyle(
        //                 fontSize: 30,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //               minFontSize: 12,
        //               maxLines: 1,
        //               overflow: TextOverflow.ellipsis,
        //             ),
        //           ),
        //           // Text(
        //           //   '$franchise',
        //           //   style: Theme.of(context).textTheme.headline5.copyWith(
        //           //       color: Colors.white, fontWeight: FontWeight.bold),
        //           // ),
        //           const Spacer(),
        //           CircleAvatar(
        //             backgroundColor: Colors.white,
        //             child: Badge(
        //               label: IconButton(
        //                 color: Constants.primaryColor,
        //                 icon: const Icon(Icons.shopping_bag),
        //                 onPressed: () {
        //
        //                 },
        //               ),
        //               child: const Text(
        //                 '10',
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       bottom: 0,
        //       left: 0,
        //       right: 0,
        //       child: Container(
        //         alignment: Alignment.center,
        //         margin: EdgeInsets.symmetric(horizontal: Constants.padding),
        //         padding: EdgeInsets.symmetric(horizontal: Constants.padding),
        //         height: 54,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(20),
        //           boxShadow: [
        //             BoxShadow(
        //               offset: const Offset(0, 10),
        //               blurRadius: 50,
        //               color: Constants.primaryColor.withOpacity(0.23),
        //             ),
        //           ],
        //         ),
        //         child: Row(
        //           children: [
        //             Expanded(
        //               child: TextField(
        //                 decoration: InputDecoration(
        //                   hintText: "Search",
        //                   hintStyle: TextStyle(
        //                     color: Constants.primaryColor.withOpacity(0.5),
        //                   ),
        //                   enabledBorder: InputBorder.none,
        //                   focusedBorder: InputBorder.none,
        //                 ),
        //               ),
        //             ),
        //            const Icon(
        //               Icons.search,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
    );
  }
}
