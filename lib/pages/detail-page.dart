import 'package:flutter/material.dart';
import '../misc/colors.dart';
import '../widgets/app-buttons.dart';
import '../widgets/app-large-text.dart';
import '../widgets/app-text.dart';
import '../widgets/responsive-button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars=4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
                right: 0,
                child: Container(
                width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/mountain.jpeg"),
                      fit: BoxFit.cover
                    ),

                  ),
            )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),

                  ],
                )),
            Positioned(
              top: 170,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LargeText(text: "Yosemite", color: Colors.black.withOpacity(0.8)),
                          LargeText(text: "\$ 250", color: AppColors.mainColor)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor,),
                          AppText(text:"USA, California", color: AppColors.textColor1),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                              return Icon(Icons.star, color: index< gottenStars?AppColors.starColor:AppColors.textColor2);
                            }),
                          ),
                          SizedBox(height: 10,),
                          AppText(text: "(4.0)", color: AppColors.textColor1,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      LargeText(text: "People", color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 5,),
                      AppText(text: "Number of people in your group", color: AppColors.mainTextColor,),
                      SizedBox(height: 10,),
                      Wrap(
                        children: List.generate(5, (index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex=index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                  size: 50,
                                  color: selectedIndex==index?Colors.white:Colors.black,
                                  backgroundColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                                  borderColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                                  text:(index+1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 10,),
                      LargeText(text: "Description",color: Colors.black.withOpacity(0.8), size: 20,),
                      SizedBox(height: 10,),
                      AppText(text: "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to see the nature. "
                          "Traveling helps in reducing stress of work.", color: AppColors.mainTextColor, size: 15,)
                    ]
                  ),
            )
      ),
            Positioned(
                bottom:20,
                left:20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(size: 60,
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    isIcon: true,
                    icons: Icons.favorite_border,
                ),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,
                    )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
