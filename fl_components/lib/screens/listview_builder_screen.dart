import 'dart:async';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:fl_components/widgets/loading_icon.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() { 
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        //add5();
        fetchData();
      }
    }
    );
  }

  Future fetchData() async{

    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(milliseconds: 3000));

    add5();

    isLoading = false;
    setState(() {});   

    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;
    
    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
    );
  }

  void add5(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
      );

    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,

              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                    );
                },
              ),
            ),

            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 -30,
                child:  const LoadingIcon()
                ),
          ],
        ),
      ),
    );
  }
}

