import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';

import '../../../constants/style.dart';

class Testimonial extends StatefulWidget {
  const Testimonial({Key? key}) : super(key: key);

  @override
  State<Testimonial> createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
  Map<String, dynamic> testiMonialData = {
    'Ashish Suthar': [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue. Nam iaculis vulputate arcu vitae dictum. Sed malesuada hendrerit erat, ut varius enim aliquam a. Nulla euismod purus in viverra sodales. Nunc non mi tempus, laoreet sapien id, porta est. Nullam faucibus interdum tincidunt. Sed enim nibh, tincidunt eget ultricies a, efficitur id ante. ',
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Founder of ABC'
    ],
    'Ketan Parikh': [
      'Fusce interdum ullamcorper massa ut auctor. Maecenas lobortis vehicula pellentesque. Cras nec nisl sed nisl suscipit semper in id libero. Maecenas mollis et eros a pulvinar. Morbi magna leo, accumsan id elit sit amet, lobortis varius lorem. Maecenas vel tellus dignissim, varius ante tincidunt, iaculis nulla. Cras vitae tempus justo. Suspendisse metus ipsum, ullamcorper ut aliquam non, condimentum et lacus. Integer egestas mi ac nunc ultricies, et feugiat ex interdum. Morbi tempor semper nisi, at lobortis metus accumsan nec. Sed ornare massa id imperdiet vehicula. Pellentesque tempor venenatis risus vitae lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egesta.',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'Founder of XYZ'
    ],
    'Nayan Tikoo': [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue. Nam iaculis vulputate arcu vitae dictum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. ',
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'Founder of DOTOCOT'
    ],
    'Shrutik Trivedi': [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue. Nam iaculis vulputate arcu vitae dictum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue.',
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Founder of Lpoit'
    ],
    'Dr.B.K Raval': [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget t arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue.',
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Founder of Cibix'
    ],
    'M K Modi': [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum leo eget dui elementum convallis. Suspendisse eu malesuada ligula, eu aliquet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue. Nam iaculis vulputate arcu vitae dictum Lorem ipsum dolor sit amet,quet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue.t turpis. Integer et metus augue. Nam iaculis vulputate arcu vitae dictum Lorem ipsum dolor sit amet,quet arcu. Donec sed porttitor nulla. Donec eu arcu bibendum enim iaculis dictum eget sit amet turpis. Integer et metus augue.',
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Founder of DaConsultant'
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'What our client says about us',
          style: appTheme!.text35BoldBlack,
        ),
        clientTestimony()
      ],
    );
  }

  Widget clientTestimony() => Container(
        // height: MediaQuery.of(context).size.height * 0.52,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 4, vertical: 50),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            padding: EdgeInsets.symmetric(vertical: 20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: testiMonialData.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 6),
                            color: lightGrey.withOpacity(.1),
                            blurRadius: 12)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(testiMonialData.values.toList()[index][0],
                          style: appTheme!.text14RegularGrey),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 25,
                          width: MediaQuery.of(context).size.width / 15,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (context, index) => SvgPicture.asset(
                                  'assets/icons/icon-star.svg')),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            testiMonialData.values.toList()[index][1],
                          ),
                        ),
                        title: Text(
                          testiMonialData.keys.toList()[index],
                          style: appTheme!.text18BolddBlack,
                        ),
                        subtitle: Text(
                          testiMonialData.values.toList()[index][2],
                          style: appTheme!.text12RegularGrey,
                        ),
                      )
                    ],
                  ));
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.5);
            }),
      );
}
