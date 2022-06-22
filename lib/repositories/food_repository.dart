import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodRepository{
  final List<Food> _dummyFoods=[
    Food(
      title: '핫후라이드',
      subtitle: '명불허전! 바삭함, 고소함 가득! 매콤하게 튀긴 매운 맛 후라이드 치킨의 정석',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 950g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'http://www.bhc.co.kr//upload/bhc/menu//410_0023_%ED%95%AB%ED%9B%84%EB%9D%BC%EC%9D%B4%EB%93%9C(0).jpg',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'http://www.bhc.co.kr//upload/bhc/menu//ckc20150130_470_v.jpg',
    ),
    Food(
      title: '뿌링클 콤보',
      subtitle: '뿌링뿌링! 세상에 없던 마법의 맛 뿌링클, 퍽퍽한 닭가슴살 없이 윙과 닭다리만 담은 콤보(소스 포함)',
      description:
      '[닭고기 : 국내산/윙,봉,닭다리 5조각씩 제공]'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'http://www.bhc.co.kr//upload/bhc/menu//%EB%BF%8C%EB%A7%81%ED%81%B4_410x271.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),            Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
    Food(
      title: '바삭클순살',
      subtitle: '담백깔끔, 정직하게 튀겨낸 bhc 후라이드에 바삭함을 더한 옛날 통닭의 귀환, 오직 닭가슴살로만 구성된 순살!',
      description:
      '[닭고기 : 국내산]'
          '조리 전 중량 600g 이상'
          '※조리시 계육 내 유/수분 증발로 중량차이가 발생합니다.',
      image: 'https://kfcapi.inicis.com/kfcs_api_img/KFCS/goods/DL_2175114_20220106094224864.png',
    ),
  ];
  List<Food> getFoods(){
    return _dummyFoods;
  }
}