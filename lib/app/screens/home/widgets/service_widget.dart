import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _serviceItemList.map((service){
        return ServiceItem(
          serviceIcon: service.serviceIcon,
          serviceName: service.serviceName,
        );
      }).toList(),
    );
  }

 


}

 final _serviceItemList = [
  ItemModel(
    serviceIcon: 'assets/svgs/wifi.svg',
    serviceName: 'Data'
  ),
  ItemModel(
    serviceIcon: 'assets/svgs/call.svg',
    serviceName: 'Airtime'
  ),
  ItemModel(
    serviceIcon: 'assets/svgs/bulb.svg',
    serviceName: 'Electricity'
  ),
  ItemModel(
    serviceIcon: 'assets/svgs/more.svg',
    serviceName: 'All Services'
  )


  ];

class ItemModel{
  ItemModel({this.serviceIcon, this.serviceName});
  final String?  serviceIcon;
  final String? serviceName;

}

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key, this.serviceIcon, this.serviceName});
  final String? serviceIcon;
  final String? serviceName;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SvgPicture.asset(serviceIcon!),
        const SizedBox(height: 3,),
        Text(serviceName!)

      ],

    );
  }
}