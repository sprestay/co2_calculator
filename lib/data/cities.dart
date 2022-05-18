import 'dart:ui';
import 'package:flutter/material.dart';

Map<String, Map<String, dynamic>> cities = {
  "Zhuzhou": {
    "name": "Zhuzhou",
    "country": "China",
    "lat": 27.83333,
    "lon": 113.15
  },
  "Yancheng": {
    "name": "Yancheng",
    "country": "China",
    "lat": 33.3575,
    "lon": 120.1573
  },
  "Xining": {
    "name": "Xining",
    "country": "China",
    "lat": 36.62554,
    "lon": 101.75739
  },
  "Shantou": {
    "name": "Shantou",
    "country": "China",
    "lat": 23.36814,
    "lon": 116.71479
  },
  "Putian": {
    "name": "Putian",
    "country": "China",
    "lat": 25.43944,
    "lon": 119.01028
  },
  "Lanzhou": {
    "name": "Lanzhou",
    "country": "China",
    "lat": 36.05701,
    "lon": 103.83987
  },
  "Yiyang": {
    "name": "Yiyang",
    "country": "China",
    "lat": 28.58917,
    "lon": 112.32833
  },
  "Suzhou": {
    "name": "Suzhou",
    "country": "China",
    "lat": 33.63611,
    "lon": 116.97889
  },
  "Shenyang": {
    "name": "Shenyang",
    "country": "China",
    "lat": 41.79222,
    "lon": 123.43278
  },
  "Daqing": {
    "name": "Daqing",
    "country": "China",
    "lat": 46.58333,
    "lon": 125.0
  },
  "Hamburg": {
    "name": "Hamburg",
    "country": "Germany",
    "lat": 53.55073,
    "lon": 9.99302
  },
  "Gaziantep": {
    "name": "Gaziantep",
    "country": "Turkey",
    "lat": 37.05944,
    "lon": 37.3825
  },
  "Asuncion": {
    "name": "Asuncion",
    "country": "Paraguay",
    "lat": -25.28646,
    "lon": -57.647
  },
  "Yekaterinburg": {
    "name": "Yekaterinburg",
    "country": "Russian Federation",
    "lat": 56.8519,
    "lon": 60.6122
  },
  "Brasilia": {
    "name": "Brasilia",
    "country": "Brazil",
    "lat": -15.77972,
    "lon": -47.92972
  },
  "Makassar": {
    "name": "Makassar",
    "country": "Indonesia",
    "lat": -5.14861,
    "lon": 119.43194
  },
  "Dublin": {
    "name": "Dublin",
    "country": "Ireland",
    "lat": 53.33306,
    "lon": -6.24889
  },
  "Nagpur": {
    "name": "Nagpur",
    "country": "India",
    "lat": 21.14631,
    "lon": 79.08491
  },
  "Belo Horizonte": {
    "name": "Belo Horizonte",
    "country": "Brazil",
    "lat": -19.92083,
    "lon": -43.93778
  },
  "Barcelona": {
    "name": "Barcelona",
    "country": "Spain",
    "lat": 41.38879,
    "lon": 2.15899
  },
  "Mianyang": {
    "name": "Mianyang",
    "country": "China",
    "lat": 31.46784,
    "lon": 104.68168
  },
  "Liaocheng": {
    "name": "Liaocheng",
    "country": "China",
    "lat": 36.45064,
    "lon": 116.00247
  },
  "Guilin": {
    "name": "Guilin",
    "country": "China",
    "lat": 25.28022,
    "lon": 110.29639
  },
  "Chaozhou": {
    "name": "Chaozhou",
    "country": "China",
    "lat": 23.65396,
    "lon": 116.62262
  },
  "South Tangerang": {
    "name": "South Tangerang",
    "country": "Indonesia",
    "lat": -6.28862,
    "lon": 106.71789
  },
  "Tirunelveli": {
    "name": "Tirunelveli",
    "country": "India",
    "lat": 8.72742,
    "lon": 77.6838
  },
  "Thane": {
    "name": "Thane",
    "country": "India",
    "lat": 19.19704,
    "lon": 72.96355
  },
  "Najafgarh": {
    "name": "Najafgarh",
    "country": "India",
    "lat": 28.60922,
    "lon": 76.97982
  },
  "Delhi": {
    "name": "Delhi",
    "country": "India",
    "lat": 28.65195,
    "lon": 77.23149
  },
  "Abuja": {
    "name": "Abuja",
    "country": "Nigeria",
    "lat": 9.05785,
    "lon": 7.49508
  },
  "Odessa": {
    "name": "Odessa",
    "country": "Ukraine",
    "lat": 46.48572,
    "lon": 30.74383
  },
  "Jeddah": {
    "name": "Jeddah",
    "country": "Saudi Arabia",
    "lat": 21.49012,
    "lon": 39.18624
  },
  "Singapore": {
    "name": "Singapore",
    "country": "Singapore",
    "lat": 1.28967,
    "lon": 103.85007
  },
  "Giza": {
    "name": "Giza",
    "country": "Egypt",
    "lat": 30.00944,
    "lon": 31.20861
  },
  "Kumasi": {
    "name": "Kumasi",
    "country": "Ghana",
    "lat": 6.68848,
    "lon": -1.62443
  },
  "Palembang": {
    "name": "Palembang",
    "country": "Indonesia",
    "lat": -2.91673,
    "lon": 104.7458
  },
  "Medina": {
    "name": "Medina",
    "country": "Saudi Arabia",
    "lat": 24.46861,
    "lon": 39.61417
  },
  "Izmir": {
    "name": "Izmir",
    "country": "Turkey",
    "lat": 38.41273,
    "lon": 27.13838
  },
  "Manila": {
    "name": "Manila",
    "country": "Philippines",
    "lat": 14.6042,
    "lon": 120.9822
  },
  "Lahore": {
    "name": "Lahore",
    "country": "Pakistan",
    "lat": 31.558,
    "lon": 74.35071
  },
  "San Diego": {
    "name": "San Diego",
    "country": "United States",
    "lat": 32.71571,
    "lon": -117.16472
  },
  "Suwon": {
    "name": "Suwon",
    "country": "Korea, Republic of",
    "lat": 37.29111,
    "lon": 127.00889
  },
  "Incheon": {
    "name": "Incheon",
    "country": "Korea, Republic of",
    "lat": 37.45646,
    "lon": 126.70515
  },
  "Bamako": {"name": "Bamako", "country": "Mali", "lat": 12.65, "lon": -8.0},
  "Gustavo Adolfo Madero": {
    "name": "Gustavo Adolfo Madero",
    "country": "Mexico",
    "lat": 19.49392,
    "lon": -99.11075
  },
  "Salvador": {
    "name": "Salvador",
    "country": "Brazil",
    "lat": -12.97111,
    "lon": -38.51083
  },
  "Yantai": {
    "name": "Yantai",
    "country": "China",
    "lat": 37.47649,
    "lon": 121.44081
  },
  "Weifang": {
    "name": "Weifang",
    "country": "China",
    "lat": 36.71,
    "lon": 119.10194
  },
  "Tianjin": {
    "name": "Tianjin",
    "country": "China",
    "lat": 39.14222,
    "lon": 117.17667
  },
  "Shaoxing": {
    "name": "Shaoxing",
    "country": "China",
    "lat": 30.00237,
    "lon": 120.57864
  },
  "Hangzhou": {
    "name": "Hangzhou",
    "country": "China",
    "lat": 30.29365,
    "lon": 120.16142
  },
  "Datong": {
    "name": "Datong",
    "country": "China",
    "lat": 40.09361,
    "lon": 113.29139
  },
  "Anshan": {
    "name": "Anshan",
    "country": "China",
    "lat": 41.12361,
    "lon": 122.99
  },
  "Budapest": {
    "name": "Budapest",
    "country": "Hungary",
    "lat": 47.49835,
    "lon": 19.04045
  },
  "Yinchuan": {
    "name": "Yinchuan",
    "country": "China",
    "lat": 38.46806,
    "lon": 106.27306
  },
  "Zhangjiagang": {
    "name": "Zhangjiagang",
    "country": "China",
    "lat": 31.865,
    "lon": 120.53889
  },
  "Shanghai": {
    "name": "Shanghai",
    "country": "China",
    "lat": 31.22222,
    "lon": 121.45806
  },
  "Jieyang": {
    "name": "Jieyang",
    "country": "China",
    "lat": 23.5418,
    "lon": 116.36581
  },
  "Longyan": {
    "name": "Longyan",
    "country": "China",
    "lat": 25.07485,
    "lon": 117.01775
  },
  "Guadalajara": {
    "name": "Guadalajara",
    "country": "Mexico",
    "lat": 20.66682,
    "lon": -103.39182
  },
  "Rome": {
    "name": "Rome",
    "country": "Italy",
    "lat": 41.89193,
    "lon": 12.51133
  },
  "Teni": {
    "name": "Teni",
    "country": "India",
    "lat": 10.01115,
    "lon": 77.47772
  },
  "Chennai": {
    "name": "Chennai",
    "country": "India",
    "lat": 13.08784,
    "lon": 80.27847
  },
  "Tehran": {
    "name": "Tehran",
    "country": "Iran, Islamic Rep. of",
    "lat": 35.69439,
    "lon": 51.42151
  },
  "Puebla": {
    "name": "Puebla",
    "country": "Mexico",
    "lat": 19.03793,
    "lon": -98.20346
  },
  "Kyiv": {
    "name": "Kyiv",
    "country": "Ukraine",
    "lat": 50.45466,
    "lon": 30.5238
  },
  "Kobe": {"name": "Kobe", "country": "Japan", "lat": 34.6913, "lon": 135.183},
  "Phnom Penh": {
    "name": "Phnom Penh",
    "country": "Cambodia",
    "lat": 11.56245,
    "lon": 104.91601
  },
  "Brazzaville": {
    "name": "Brazzaville",
    "country": "Congo",
    "lat": -4.26613,
    "lon": 15.28318
  },
  "Yixing": {
    "name": "Yixing",
    "country": "China",
    "lat": 31.36059,
    "lon": 119.82016
  },
  "Qinzhou": {
    "name": "Qinzhou",
    "country": "China",
    "lat": 21.98247,
    "lon": 108.65061
  },
  "Wuwei": {
    "name": "Wuwei",
    "country": "China",
    "lat": 37.92672,
    "lon": 102.63202
  },
  "Hefei": {
    "name": "Hefei",
    "country": "China",
    "lat": 31.86389,
    "lon": 117.28083
  },
  "Handan": {
    "name": "Handan",
    "country": "China",
    "lat": 36.60999,
    "lon": 114.48764
  },
  "Jiangyin": {
    "name": "Jiangyin",
    "country": "China",
    "lat": 31.91102,
    "lon": 120.26302
  },
  "Cordoba": {
    "name": "Cordoba",
    "country": "Argentina",
    "lat": -31.4135,
    "lon": -64.18105
  },
  "Caloocan City": {
    "name": "Caloocan City",
    "country": "Philippines",
    "lat": 14.64953,
    "lon": 120.96788
  },
  "Ho Chi Minh City": {
    "name": "Ho Chi Minh City",
    "country": "Viet Nam",
    "lat": 10.82302,
    "lon": 106.62965
  },
  "Soweto": {
    "name": "Soweto",
    "country": "South Africa",
    "lat": -26.26781,
    "lon": 27.85849
  },
  "Dhaka": {
    "name": "Dhaka",
    "country": "Bangladesh",
    "lat": 23.7104,
    "lon": 90.40744
  },
  "Abidjan": {
    "name": "Abidjan",
    "country": "Côte d'Ivoire",
    "lat": 5.35444,
    "lon": -4.00167
  },
  "Baoji": {
    "name": "Baoji",
    "country": "China",
    "lat": 34.36775,
    "lon": 107.23705
  },
  "Yongzhou": {
    "name": "Yongzhou",
    "country": "China",
    "lat": 26.42389,
    "lon": 111.61306
  },
  "Quanzhou": {
    "name": "Quanzhou",
    "country": "China",
    "lat": 24.91389,
    "lon": 118.58583
  },
  "Nanchong": {
    "name": "Nanchong",
    "country": "China",
    "lat": 30.79508,
    "lon": 106.08473
  },
  "Lu'an": {
    "name": "Lu'an",
    "country": "China",
    "lat": 31.73561,
    "lon": 116.51688
  },
  "Jiaxing": {
    "name": "Jiaxing",
    "country": "China",
    "lat": 30.7522,
    "lon": 120.75
  },
  "Fuyang": {
    "name": "Fuyang",
    "country": "China",
    "lat": 32.9,
    "lon": 115.81667
  },
  "Addis Ababa": {
    "name": "Addis Ababa",
    "country": "Ethiopia",
    "lat": 9.02497,
    "lon": 38.74689
  },
  "Baku": {
    "name": "Baku",
    "country": "Azerbaijan",
    "lat": 40.37767,
    "lon": 49.89201
  },
  "Tiruchirappalli": {
    "name": "Tiruchirappalli",
    "country": "India",
    "lat": 10.8155,
    "lon": 78.69651
  },
  "Nowrangapur": {
    "name": "Nowrangapur",
    "country": "India",
    "lat": 19.23114,
    "lon": 82.54826
  },
  "Gorakhpur": {
    "name": "Gorakhpur",
    "country": "India",
    "lat": 29.44768,
    "lon": 75.67206
  },
  "Aurangabad": {
    "name": "Aurangabad",
    "country": "India",
    "lat": 19.87757,
    "lon": 75.34226
  },
  "Yokohama": {
    "name": "Yokohama",
    "country": "Japan",
    "lat": 35.43333,
    "lon": 139.65
  },
  "Tokyo": {
    "name": "Tokyo",
    "country": "Japan",
    "lat": 35.6895,
    "lon": 139.69171
  },
  "Ra's Bayrut": {
    "name": "Ra's Bayrut",
    "country": "Lebanon",
    "lat": 33.9,
    "lon": 35.48333
  },
  "Budta": {
    "name": "Budta",
    "country": "Philippines",
    "lat": 7.20417,
    "lon": 124.43972
  },
  "Maracay": {
    "name": "Maracay",
    "country": "Venezuela, Bolivarian Rep. of",
    "lat": 10.23535,
    "lon": -67.59113
  },
  "Jakarta": {
    "name": "Jakarta",
    "country": "Indonesia",
    "lat": -6.21462,
    "lon": 106.84513
  },
  "Batam": {
    "name": "Batam",
    "country": "Indonesia",
    "lat": 1.14937,
    "lon": 104.02491
  },
  "Rawalpindi": {
    "name": "Rawalpindi",
    "country": "Pakistan",
    "lat": 33.59733,
    "lon": 73.0479
  },
  "Karachi": {
    "name": "Karachi",
    "country": "Pakistan",
    "lat": 24.8608,
    "lon": 67.0104
  },
  "Ufa": {
    "name": "Ufa",
    "country": "Russian Federation",
    "lat": 54.74306,
    "lon": 55.96779
  },
  "Mecca": {
    "name": "Mecca",
    "country": "Saudi Arabia",
    "lat": 21.42664,
    "lon": 39.82563
  },
  "Ankara": {
    "name": "Ankara",
    "country": "Turkey",
    "lat": 39.91987,
    "lon": 32.85427
  },
  "Liupanshui": {
    "name": "Liupanshui",
    "country": "China",
    "lat": 26.59444,
    "lon": 104.83333
  },
  "Havana": {
    "name": "Havana",
    "country": "Cuba",
    "lat": 23.13302,
    "lon": -82.38304
  },
  "Milan": {
    "name": "Milan",
    "country": "Italy",
    "lat": 45.46427,
    "lon": 9.18951
  },
  "Ibadan": {
    "name": "Ibadan",
    "country": "Nigeria",
    "lat": 7.37756,
    "lon": 3.90591
  },
  "Faridabad": {
    "name": "Faridabad",
    "country": "India",
    "lat": 28.41124,
    "lon": 77.31316
  },
  "Kolkata": {
    "name": "Kolkata",
    "country": "India",
    "lat": 22.56263,
    "lon": 88.36304
  },
  "Yangzhou": {
    "name": "Yangzhou",
    "country": "China",
    "lat": 32.39722,
    "lon": 119.43583
  },
  "Shangrao": {
    "name": "Shangrao",
    "country": "China",
    "lat": 28.45179,
    "lon": 117.94287
  },
  "Xiangyang": {
    "name": "Xiangyang",
    "country": "China",
    "lat": 32.0422,
    "lon": 112.14479
  },
  "Qujing": {
    "name": "Qujing",
    "country": "China",
    "lat": 25.48333,
    "lon": 103.78333
  },
  "Nanning": {
    "name": "Nanning",
    "country": "China",
    "lat": 22.81667,
    "lon": 108.31667
  },
  "Huainan": {
    "name": "Huainan",
    "country": "China",
    "lat": 32.62639,
    "lon": 116.99694
  },
  "Tijuana": {
    "name": "Tijuana",
    "country": "Mexico",
    "lat": 32.5027,
    "lon": -117.00371
  },
  "New York City": {
    "name": "New York City",
    "country": "United States",
    "lat": 40.71427,
    "lon": -74.00597
  },
  "Chelyabinsk": {
    "name": "Chelyabinsk",
    "country": "Russian Federation",
    "lat": 55.15402,
    "lon": 61.42915
  },
  "Bogota": {
    "name": "Bogota",
    "country": "Colombia",
    "lat": 4.60971,
    "lon": -74.08175
  },
  "Quito": {
    "name": "Quito",
    "country": "Ecuador",
    "lat": -0.22985,
    "lon": -78.52495
  },
  "Shubra al Khaymah": {
    "name": "Shubra al Khaymah",
    "country": "Egypt",
    "lat": 30.12511,
    "lon": 31.25053
  },
  "Cairo": {
    "name": "Cairo",
    "country": "Egypt",
    "lat": 30.06263,
    "lon": 31.24967
  },
  "Yichun": {
    "name": "Yichun",
    "country": "China",
    "lat": 27.83333,
    "lon": 114.4
  },
  "Taiyuan": {
    "name": "Taiyuan",
    "country": "China",
    "lat": 37.86944,
    "lon": 112.56028
  },
  "Guankou": {
    "name": "Guankou",
    "country": "China",
    "lat": 28.15861,
    "lon": 113.62709
  },
  "Jinan": {
    "name": "Jinan",
    "country": "China",
    "lat": 36.66833,
    "lon": 116.99722
  },
  "Guigang": {
    "name": "Guigang",
    "country": "China",
    "lat": 23.11603,
    "lon": 109.59472
  },
  "Dalian": {
    "name": "Dalian",
    "country": "China",
    "lat": 38.91222,
    "lon": 121.60222
  },
  "Bozhou": {
    "name": "Bozhou",
    "country": "China",
    "lat": 33.87722,
    "lon": 115.77028
  },
  "Chongqing": {
    "name": "Chongqing",
    "country": "China",
    "lat": 29.56026,
    "lon": 106.55771
  },
  "Leon de los Aldama": {
    "name": "Leon de los Aldama",
    "country": "Mexico",
    "lat": 21.12908,
    "lon": -101.67374
  },
  "Lima": {
    "name": "Lima",
    "country": "Peru",
    "lat": -12.04318,
    "lon": -77.02824
  },
  "Quezon City": {
    "name": "Quezon City",
    "country": "Philippines",
    "lat": 14.6488,
    "lon": 121.0509
  },
  "Mexico City": {
    "name": "Mexico City",
    "country": "Mexico",
    "lat": 19.42847,
    "lon": -99.12766
  },
  "Surat": {
    "name": "Surat",
    "country": "India",
    "lat": 21.19594,
    "lon": 72.83023
  },
  "Port-au-Prince": {
    "name": "Port-au-Prince",
    "country": "Haiti",
    "lat": 18.54349,
    "lon": -72.33881
  },
  "Yunfu": {
    "name": "Yunfu",
    "country": "China",
    "lat": 22.92787,
    "lon": 112.03809
  },
  "Pyongyang": {
    "name": "Pyongyang",
    "country": "Korea, Dem. People's Rep. of",
    "lat": 39.03385,
    "lon": 125.75432
  },
  "Kano": {
    "name": "Kano",
    "country": "Nigeria",
    "lat": 12.00012,
    "lon": 8.51672
  },
  "Baghdad": {
    "name": "Baghdad",
    "country": "Iraq",
    "lat": 33.34058,
    "lon": 44.40088
  },
  "Al Basrah al Qadimah": {
    "name": "Al Basrah al Qadimah",
    "country": "Iraq",
    "lat": 30.50316,
    "lon": 47.81507
  },
  "Harare": {
    "name": "Harare",
    "country": "Zimbabwe",
    "lat": -17.82772,
    "lon": 31.05337
  },
  "Belem": {
    "name": "Belem",
    "country": "Brazil",
    "lat": -1.45583,
    "lon": -48.50444
  },
  "Linyi": {
    "name": "Linyi",
    "country": "China",
    "lat": 35.06306,
    "lon": 118.34278
  },
  "Hohhot": {
    "name": "Hohhot",
    "country": "China",
    "lat": 40.81056,
    "lon": 111.65222
  },
  "Kabul": {
    "name": "Kabul",
    "country": "Afghanistan",
    "lat": 34.52813,
    "lon": 69.17233
  },
  "Busan": {
    "name": "Busan",
    "country": "Korea, Republic of",
    "lat": 35.10168,
    "lon": 129.03004
  },
  "Seongnam-si": {
    "name": "Seongnam-si",
    "country": "Korea, Republic of",
    "lat": 37.43861,
    "lon": 127.13778
  },
  "Mosul": {"name": "Mosul", "country": "Iraq", "lat": 36.335, "lon": 43.11889},
  "Basrah": {
    "name": "Basrah",
    "country": "Iraq",
    "lat": 30.50852,
    "lon": 47.7804
  },
  "San Antonio": {
    "name": "San Antonio",
    "country": "United States",
    "lat": 29.42412,
    "lon": -98.49363
  },
  "Samara": {
    "name": "Samara",
    "country": "Russian Federation",
    "lat": 53.20007,
    "lon": 50.15
  },
  "Mumbai": {
    "name": "Mumbai",
    "country": "India",
    "lat": 19.07283,
    "lon": 72.88261
  },
  "Recife": {
    "name": "Recife",
    "country": "Brazil",
    "lat": -8.05389,
    "lon": -34.88111
  },
  "Campinas": {
    "name": "Campinas",
    "country": "Brazil",
    "lat": -22.90556,
    "lon": -47.06083
  },
  "Zigong": {
    "name": "Zigong",
    "country": "China",
    "lat": 29.34162,
    "lon": 104.77689
  },
  "Barranquilla": {
    "name": "Barranquilla",
    "country": "Colombia",
    "lat": 10.96854,
    "lon": -74.78132
  },
  "Prague": {
    "name": "Prague",
    "country": "Czech Republic",
    "lat": 50.08804,
    "lon": 14.42076
  },
  "Kunshan": {
    "name": "Kunshan",
    "country": "China",
    "lat": 31.37762,
    "lon": 120.95431
  },
  "Yichang": {
    "name": "Yichang",
    "country": "China",
    "lat": 30.71444,
    "lon": 111.28472
  },
  "Nantong": {
    "name": "Nantong",
    "country": "China",
    "lat": 32.03028,
    "lon": 120.87472
  },
  "Jingzhou": {
    "name": "Jingzhou",
    "country": "China",
    "lat": 30.35028,
    "lon": 112.19028
  },
  "Fuzhou": {
    "name": "Fuzhou",
    "country": "China",
    "lat": 26.06139,
    "lon": 119.30611
  },
  "Fushun": {
    "name": "Fushun",
    "country": "China",
    "lat": 41.88669,
    "lon": 123.94363
  },
  "Changshu": {
    "name": "Changshu",
    "country": "China",
    "lat": 31.64615,
    "lon": 120.74221
  },
  "Bayan Nur": {
    "name": "Bayan Nur",
    "country": "China",
    "lat": 40.74143,
    "lon": 107.38599
  },
  "Tbilisi": {
    "name": "Tbilisi",
    "country": "Georgia",
    "lat": 41.69411,
    "lon": 44.83368
  },
  "Maracaibo": {
    "name": "Maracaibo",
    "country": "Venezuela, Bolivarian Rep. of",
    "lat": 10.66663,
    "lon": -71.61245
  },
  "Lusaka": {
    "name": "Lusaka",
    "country": "Zambia",
    "lat": -15.40669,
    "lon": 28.28713
  },
  "Tangshan": {
    "name": "Tangshan",
    "country": "China",
    "lat": 39.63333,
    "lon": 118.18333
  },
  "Neijiang": {
    "name": "Neijiang",
    "country": "China",
    "lat": 29.58354,
    "lon": 105.06216
  },
  "Yiwu": {
    "name": "Yiwu",
    "country": "China",
    "lat": 29.31506,
    "lon": 120.07676
  },
  "Baotou": {
    "name": "Baotou",
    "country": "China",
    "lat": 40.6516,
    "lon": 109.84389
  },
  "Luanda": {
    "name": "Luanda",
    "country": "Angola",
    "lat": -8.83682,
    "lon": 13.23432
  },
  "Kinshasa": {
    "name": "Kinshasa",
    "country": "Congo, Democratic Republic of the",
    "lat": -4.32758,
    "lon": 15.31357
  },
  "Daegu": {
    "name": "Daegu",
    "country": "Korea, Republic of",
    "lat": 35.87028,
    "lon": 128.59111
  },
  "Xuzhou": {
    "name": "Xuzhou",
    "country": "China",
    "lat": 34.20442,
    "lon": 117.28386
  },
  "Bandung": {
    "name": "Bandung",
    "country": "Indonesia",
    "lat": -6.92222,
    "lon": 107.60694
  },
  "Ranchi": {
    "name": "Ranchi",
    "country": "India",
    "lat": 23.34316,
    "lon": 85.3094
  },
  "Hyderabad": {
    "name": "Hyderabad",
    "country": "Pakistan",
    "lat": 25.39242,
    "lon": 68.37366
  },
  "Ciudad Nezahualcoyotl": {
    "name": "Ciudad Nezahualcoyotl",
    "country": "Mexico",
    "lat": 19.40061,
    "lon": -99.01483
  },
  "Tashkent": {
    "name": "Tashkent",
    "country": "Uzbekistan",
    "lat": 41.26465,
    "lon": 69.21627
  },
  "Hanoi": {
    "name": "Hanoi",
    "country": "Viet Nam",
    "lat": 21.0245,
    "lon": 105.84117
  },
  "Ciudad Juarez": {
    "name": "Ciudad Juarez",
    "country": "Mexico",
    "lat": 31.72024,
    "lon": -106.46084
  },
  "Maputo": {
    "name": "Maputo",
    "country": "Mozambique",
    "lat": -25.96553,
    "lon": 32.58322
  },
  "Istanbul": {
    "name": "Istanbul",
    "country": "Turkey",
    "lat": 41.01384,
    "lon": 28.94966
  },
  "Taichung": {
    "name": "Taichung",
    "country": "Taiwan, China",
    "lat": 24.1469,
    "lon": 120.6839
  },
  "Brooklyn": {
    "name": "Brooklyn",
    "country": "United States",
    "lat": 40.6501,
    "lon": -73.94958
  },
  "Donetsk": {
    "name": "Donetsk",
    "country": "Ukraine",
    "lat": 48.023,
    "lon": 37.80224
  },
  "Dallas": {
    "name": "Dallas",
    "country": "United States",
    "lat": 32.78306,
    "lon": -96.80667
  },
  "Cali": {
    "name": "Cali",
    "country": "Colombia",
    "lat": 3.43722,
    "lon": -76.5225
  },
  "Douala": {
    "name": "Douala",
    "country": "Cameroon",
    "lat": 4.04827,
    "lon": 9.70428
  },
  "Zibo": {
    "name": "Zibo",
    "country": "China",
    "lat": 36.79056,
    "lon": 118.06333
  },
  "Tianshui": {
    "name": "Tianshui",
    "country": "China",
    "lat": 34.57952,
    "lon": 105.74238
  },
  "Baoding": {
    "name": "Baoding",
    "country": "China",
    "lat": 38.85111,
    "lon": 115.49028
  },
  "Brussels": {
    "name": "Brussels",
    "country": "Belgium",
    "lat": 50.85045,
    "lon": 4.34878
  },
  "Porto Alegre": {
    "name": "Porto Alegre",
    "country": "Brazil",
    "lat": -30.03283,
    "lon": -51.23019
  },
  "Minsk": {
    "name": "Minsk",
    "country": "Belarus",
    "lat": 53.9,
    "lon": 27.56667
  },
  "Lubumbashi": {
    "name": "Lubumbashi",
    "country": "Congo, Democratic Republic of the",
    "lat": -11.66089,
    "lon": 27.47938
  },
  "Beirut": {
    "name": "Beirut",
    "country": "Lebanon",
    "lat": 33.89332,
    "lon": 35.50157
  },
  "Montevideo": {
    "name": "Montevideo",
    "country": "Uruguay",
    "lat": -34.90328,
    "lon": -56.18816
  },
  "Valencia": {
    "name": "Valencia",
    "country": "Venezuela, Bolivarian Rep. of",
    "lat": 10.16202,
    "lon": -68.00765
  },
  "Nagoya": {
    "name": "Nagoya",
    "country": "Japan",
    "lat": 35.18147,
    "lon": 136.90641
  },
  "Conakry": {
    "name": "Conakry",
    "country": "Guinea",
    "lat": 9.53795,
    "lon": -13.67729
  },
  "Multan": {
    "name": "Multan",
    "country": "Pakistan",
    "lat": 30.19679,
    "lon": 71.47824
  },
  "Xiamen": {
    "name": "Xiamen",
    "country": "China",
    "lat": 24.47979,
    "lon": 118.08187
  },
  "Shenzhen": {
    "name": "Shenzhen",
    "country": "China",
    "lat": 22.54554,
    "lon": 114.0683
  },
  "Maoming": {
    "name": "Maoming",
    "country": "China",
    "lat": 21.66625,
    "lon": 110.91364
  },
  "Changsha": {
    "name": "Changsha",
    "country": "China",
    "lat": 28.19874,
    "lon": 112.97087
  },
  "Isfahan": {
    "name": "Isfahan",
    "country": "Iran, Islamic Rep. of",
    "lat": 32.65246,
    "lon": 51.67462
  },
  "Ecatepec de Morelos": {
    "name": "Ecatepec de Morelos",
    "country": "Mexico",
    "lat": 19.60492,
    "lon": -99.06064
  },
  "Kharkiv": {
    "name": "Kharkiv",
    "country": "Ukraine",
    "lat": 49.98081,
    "lon": 36.25272
  },
  "Sofia": {
    "name": "Sofia",
    "country": "Bulgaria",
    "lat": 42.69751,
    "lon": 23.32415
  },
  "Nova Iguacu": {
    "name": "Nova Iguacu",
    "country": "Brazil",
    "lat": -22.75917,
    "lon": -43.45111
  },
  "Guayaquil": {
    "name": "Guayaquil",
    "country": "Ecuador",
    "lat": -2.19616,
    "lon": -79.88621
  },
  "UEruemqi": {
    "name": "UEruemqi",
    "country": "China",
    "lat": 43.80096,
    "lon": 87.60046
  },
  "Zhuhai": {
    "name": "Zhuhai",
    "country": "China",
    "lat": 22.27694,
    "lon": 113.56778
  },
  "Qingdao": {
    "name": "Qingdao",
    "country": "China",
    "lat": 36.06488,
    "lon": 120.38042
  },
  "Berlin": {
    "name": "Berlin",
    "country": "Germany",
    "lat": 52.52437,
    "lon": 13.41053
  },
  "Rabat": {
    "name": "Rabat",
    "country": "Morocco",
    "lat": 34.01325,
    "lon": -6.83255
  },
  "Bekasi": {
    "name": "Bekasi",
    "country": "Indonesia",
    "lat": -6.2349,
    "lon": 106.9896
  },
  "Dombivli": {
    "name": "Dombivli",
    "country": "India",
    "lat": 19.21667,
    "lon": 73.08333
  },
  "Kallakurichi": {
    "name": "Kallakurichi",
    "country": "India",
    "lat": 11.73379,
    "lon": 78.95925
  },
  "Buenos Aires": {
    "name": "Buenos Aires",
    "country": "Argentina",
    "lat": -34.61315,
    "lon": -58.37723
  },
  "Seoul": {
    "name": "Seoul",
    "country": "Korea, Republic of",
    "lat": 37.566,
    "lon": 126.9784
  },
  "Camayenne": {
    "name": "Camayenne",
    "country": "Guinea",
    "lat": 9.535,
    "lon": -13.68778
  },
  "Meerut": {
    "name": "Meerut",
    "country": "India",
    "lat": 28.98002,
    "lon": 77.70636
  },
  "Riyadh": {
    "name": "Riyadh",
    "country": "Saudi Arabia",
    "lat": 24.68773,
    "lon": 46.72185
  },
  "Dubai": {
    "name": "Dubai",
    "country": "United Arab Emirates",
    "lat": 25.07725,
    "lon": 55.30927
  },
  "Fortaleza": {
    "name": "Fortaleza",
    "country": "Brazil",
    "lat": -3.71722,
    "lon": -38.54306
  },
  "Taizhou": {
    "name": "Taizhou",
    "country": "China",
    "lat": 32.49069,
    "lon": 119.90812
  },
  "Jinzhong": {
    "name": "Jinzhong",
    "country": "China",
    "lat": 37.68403,
    "lon": 112.75471
  },
  "Jinjiang": {
    "name": "Jinjiang",
    "country": "China",
    "lat": 24.81978,
    "lon": 118.57415
  },
  "Puyang": {
    "name": "Puyang",
    "country": "China",
    "lat": 29.45679,
    "lon": 119.88872
  },
  "Huaibei": {
    "name": "Huaibei",
    "country": "China",
    "lat": 33.97444,
    "lon": 116.79167
  },
  "Dakar": {
    "name": "Dakar",
    "country": "Senegal",
    "lat": 14.6937,
    "lon": -17.44406
  },
  "Kyoto": {
    "name": "Kyoto",
    "country": "Japan",
    "lat": 35.02107,
    "lon": 135.75385
  },
  "Chicago": {
    "name": "Chicago",
    "country": "United States",
    "lat": 41.85003,
    "lon": -87.65005
  },
  "Kampala": {
    "name": "Kampala",
    "country": "Uganda",
    "lat": 0.31628,
    "lon": 32.58219
  },
  "Port Harcourt": {
    "name": "Port Harcourt",
    "country": "Nigeria",
    "lat": 4.77742,
    "lon": 7.0134
  },
  "Depok": {
    "name": "Depok",
    "country": "Indonesia",
    "lat": -6.4,
    "lon": 106.81861
  },
  "Faisalabad": {
    "name": "Faisalabad",
    "country": "Pakistan",
    "lat": 31.41554,
    "lon": 73.08969
  },
  "Madurai": {
    "name": "Madurai",
    "country": "India",
    "lat": 9.919,
    "lon": 78.11953
  },
  "Karaj": {
    "name": "Karaj",
    "country": "Iran, Islamic Rep. of",
    "lat": 35.83266,
    "lon": 50.99155
  },
  "Allahabad": {
    "name": "Allahabad",
    "country": "India",
    "lat": 25.44478,
    "lon": 81.84322
  },
  "Paris": {
    "name": "Paris",
    "country": "France",
    "lat": 48.85341,
    "lon": 2.3488
  },
  "Los Angeles": {
    "name": "Los Angeles",
    "country": "United States",
    "lat": 34.05223,
    "lon": -118.24368
  },
  "Sanaa": {
    "name": "Sanaa",
    "country": "Yemen",
    "lat": 15.35472,
    "lon": 44.20667
  },
  "Pretoria": {
    "name": "Pretoria",
    "country": "South Africa",
    "lat": -25.74486,
    "lon": 28.18783
  },
  "Lianyungang": {
    "name": "Lianyungang",
    "country": "China",
    "lat": 34.59845,
    "lon": 119.21556
  },
  "Madrid": {
    "name": "Madrid",
    "country": "Spain",
    "lat": 40.4165,
    "lon": -3.70256
  },
  "Nairobi": {
    "name": "Nairobi",
    "country": "Kenya",
    "lat": -1.28333,
    "lon": 36.81667
  },
  "Rajkot": {
    "name": "Rajkot",
    "country": "India",
    "lat": 22.29161,
    "lon": 70.79322
  },
  "Pune": {
    "name": "Pune",
    "country": "India",
    "lat": 18.51957,
    "lon": 73.85535
  },
  "Ludhiana": {
    "name": "Ludhiana",
    "country": "India",
    "lat": 30.91204,
    "lon": 75.85379
  },
  "Jamshedpur": {
    "name": "Jamshedpur",
    "country": "India",
    "lat": 22.80278,
    "lon": 86.18545
  },
  "Mogadishu": {
    "name": "Mogadishu",
    "country": "Somalia",
    "lat": 2.03711,
    "lon": 45.34375
  },
  "Sao Paulo": {
    "name": "Sao Paulo",
    "country": "Brazil",
    "lat": -23.5475,
    "lon": -46.63611
  },
  "Luoyang": {
    "name": "Luoyang",
    "country": "China",
    "lat": 34.68361,
    "lon": 112.45361
  },
  "Guiyang": {
    "name": "Guiyang",
    "country": "China",
    "lat": 26.58333,
    "lon": 106.71667
  },
  "Ganzhou": {
    "name": "Ganzhou",
    "country": "China",
    "lat": 25.84664,
    "lon": 114.9326
  },
  "Rosario": {
    "name": "Rosario",
    "country": "Argentina",
    "lat": -32.94682,
    "lon": -60.63932
  },
  "Sharjah": {
    "name": "Sharjah",
    "country": "United Arab Emirates",
    "lat": 25.33737,
    "lon": 55.41206
  },
  "Perth": {
    "name": "Perth",
    "country": "Australia",
    "lat": -31.95224,
    "lon": 115.8614
  },
  "Goiania": {
    "name": "Goiania",
    "country": "Brazil",
    "lat": -16.67861,
    "lon": -49.25389
  },
  "Santiago": {
    "name": "Santiago",
    "country": "Chile",
    "lat": -33.45694,
    "lon": -70.64827
  },
  "Zunyi": {
    "name": "Zunyi",
    "country": "China",
    "lat": 27.68667,
    "lon": 106.90722
  },
  "Munich": {
    "name": "Munich",
    "country": "Germany",
    "lat": 48.13743,
    "lon": 11.57549
  },
  "Zhanjiang": {
    "name": "Zhanjiang",
    "country": "China",
    "lat": 21.23391,
    "lon": 110.38749
  },
  "Wenzhou": {
    "name": "Wenzhou",
    "country": "China",
    "lat": 27.99942,
    "lon": 120.66682
  },
  "Luohe": {
    "name": "Luohe",
    "country": "China",
    "lat": 33.56394,
    "lon": 114.04272
  },
  "Kunming": {
    "name": "Kunming",
    "country": "China",
    "lat": 25.03889,
    "lon": 102.71833
  },
  "Cixi": {"name": "Cixi", "country": "China", "lat": 30.1764, "lon": 121.2457},
  "Hanzhong": {
    "name": "Hanzhong",
    "country": "China",
    "lat": 33.07507,
    "lon": 107.02214
  },
  "Guangzhou": {
    "name": "Guangzhou",
    "country": "China",
    "lat": 23.11667,
    "lon": 113.25
  },
  "Daejeon": {
    "name": "Daejeon",
    "country": "Korea, Republic of",
    "lat": 36.34913,
    "lon": 127.38493
  },
  "Anyang": {
    "name": "Anyang",
    "country": "China",
    "lat": 36.096,
    "lon": 114.38278
  },
  "Nanyang": {
    "name": "Nanyang",
    "country": "China",
    "lat": 32.99472,
    "lon": 112.53278
  },
  "Jinhua": {
    "name": "Jinhua",
    "country": "China",
    "lat": 29.10678,
    "lon": 119.64421
  },
  "Yangjiang": {
    "name": "Yangjiang",
    "country": "China",
    "lat": 21.85563,
    "lon": 111.96272
  },
  "Dongguan": {
    "name": "Dongguan",
    "country": "China",
    "lat": 23.01797,
    "lon": 113.74866
  },
  "Beijing": {
    "name": "Beijing",
    "country": "China",
    "lat": 39.9075,
    "lon": 116.39723
  },
  "Sydney": {
    "name": "Sydney",
    "country": "Australia",
    "lat": -33.86785,
    "lon": 151.20732
  },
  "Khulna": {
    "name": "Khulna",
    "country": "Bangladesh",
    "lat": 22.80979,
    "lon": 89.56439
  },
  "Monterrey": {
    "name": "Monterrey",
    "country": "Mexico",
    "lat": 25.67507,
    "lon": -100.31847
  },
  "Johannesburg": {
    "name": "Johannesburg",
    "country": "South Africa",
    "lat": -26.20227,
    "lon": 28.04363
  },
  "Aleppo": {
    "name": "Aleppo",
    "country": "Syrian Arab Republic",
    "lat": 36.20124,
    "lon": 37.16117
  },
  "Santo Domingo": {
    "name": "Santo Domingo",
    "country": "Dominican Republic",
    "lat": 18.47186,
    "lon": -69.89232
  },
  "Saint Petersburg": {
    "name": "Saint Petersburg",
    "country": "Russian Federation",
    "lat": 59.93863,
    "lon": 30.31413
  },
  "Sanya": {
    "name": "Sanya",
    "country": "China",
    "lat": 18.24306,
    "lon": 109.505
  },
  "Qingyuan": {
    "name": "Qingyuan",
    "country": "China",
    "lat": 23.7,
    "lon": 113.03333
  },
  "Haikou": {
    "name": "Haikou",
    "country": "China",
    "lat": 20.04583,
    "lon": 110.34167
  },
  "Foshan": {
    "name": "Foshan",
    "country": "China",
    "lat": 23.02677,
    "lon": 113.13148
  },
  "Ordos": {
    "name": "Ordos",
    "country": "China",
    "lat": 39.6086,
    "lon": 109.78157
  },
  "Semarang": {
    "name": "Semarang",
    "country": "Indonesia",
    "lat": -6.99306,
    "lon": 110.42083
  },
  "Vadodara": {
    "name": "Vadodara",
    "country": "India",
    "lat": 22.29941,
    "lon": 73.20812
  },
  "Taipei": {
    "name": "Taipei",
    "country": "Taiwan, China",
    "lat": 25.04776,
    "lon": 121.53185
  },
  "Adana": {
    "name": "Adana",
    "country": "Turkey",
    "lat": 36.98615,
    "lon": 35.32531
  },
  "Yaounde": {
    "name": "Yaounde",
    "country": "Cameroon",
    "lat": 3.86667,
    "lon": 11.51667
  },
  "Medan": {
    "name": "Medan",
    "country": "Indonesia",
    "lat": 3.58333,
    "lon": 98.66667
  },
  "Bengaluru": {
    "name": "Bengaluru",
    "country": "India",
    "lat": 12.97194,
    "lon": 77.59369
  },
  "Phoenix": {
    "name": "Phoenix",
    "country": "United States",
    "lat": 33.44838,
    "lon": -112.07404
  },
  "Kigali": {
    "name": "Kigali",
    "country": "Rwanda",
    "lat": -1.94995,
    "lon": 30.05885
  },
  "Kaduna": {
    "name": "Kaduna",
    "country": "Nigeria",
    "lat": 10.52641,
    "lon": 7.43879
  },
  "Benin City": {
    "name": "Benin City",
    "country": "Nigeria",
    "lat": 6.33815,
    "lon": 5.62575
  },
  "Kazan": {
    "name": "Kazan",
    "country": "Russian Federation",
    "lat": 55.78874,
    "lon": 49.12214
  },
  "Sapporo": {
    "name": "Sapporo",
    "country": "Japan",
    "lat": 43.06667,
    "lon": 141.35
  },
  "Hong Kong": {
    "name": "Hong Kong",
    "country": "Hong Kong, China",
    "lat": 22.27832,
    "lon": 114.17469
  },
  "Patna": {
    "name": "Patna",
    "country": "India",
    "lat": 25.59408,
    "lon": 85.13563
  },
  "Kanpur": {
    "name": "Kanpur",
    "country": "India",
    "lat": 26.46523,
    "lon": 80.34975
  },
  "Indore": {
    "name": "Indore",
    "country": "India",
    "lat": 22.71792,
    "lon": 75.8333
  },
  "Osaka": {
    "name": "Osaka",
    "country": "Japan",
    "lat": 34.69374,
    "lon": 135.50218
  },
  "London": {
    "name": "London",
    "country": "United Kingdom",
    "lat": 51.50853,
    "lon": -0.12574
  },
  "Accra": {
    "name": "Accra",
    "country": "Ghana",
    "lat": 5.55602,
    "lon": -0.1969
  },
  "Jabalpur": {
    "name": "Jabalpur",
    "country": "India",
    "lat": 23.16697,
    "lon": 79.95006
  },
  "Bucharest": {
    "name": "Bucharest",
    "country": "Romania",
    "lat": 44.43225,
    "lon": 26.10626
  },
  "Gwangju": {
    "name": "Gwangju",
    "country": "Korea, Republic of",
    "lat": 35.15472,
    "lon": 126.91556
  },
  "Casablanca": {
    "name": "Casablanca",
    "country": "Morocco",
    "lat": 33.58831,
    "lon": -7.61138
  },
  "Shangqiu": {
    "name": "Shangqiu",
    "country": "China",
    "lat": 34.45,
    "lon": 115.65
  },
  "Xinxiang": {
    "name": "Xinxiang",
    "country": "China",
    "lat": 35.19033,
    "lon": 113.80151
  },
  "Wuhu": {
    "name": "Wuhu",
    "country": "China",
    "lat": 31.33728,
    "lon": 118.37351
  },
  "Wuhan": {
    "name": "Wuhan",
    "country": "China",
    "lat": 30.58333,
    "lon": 114.26667
  },
  "Huai'an": {
    "name": "Huai'an",
    "country": "China",
    "lat": 33.58861,
    "lon": 119.01917
  },
  "Nanchang": {
    "name": "Nanchang",
    "country": "China",
    "lat": 28.68396,
    "lon": 115.85306
  },
  "Liuzhou": {
    "name": "Liuzhou",
    "country": "China",
    "lat": 24.32405,
    "lon": 109.40698
  },
  "Bijie": {
    "name": "Bijie",
    "country": "China",
    "lat": 27.30193,
    "lon": 105.28627
  },
  "Hiroshima": {
    "name": "Hiroshima",
    "country": "Japan",
    "lat": 34.4,
    "lon": 132.45
  },
  "Saitama": {
    "name": "Saitama",
    "country": "Japan",
    "lat": 35.90807,
    "lon": 139.65657
  },
  "Mandalay": {
    "name": "Mandalay",
    "country": "Myanmar",
    "lat": 21.97473,
    "lon": 96.08359
  },
  "Coimbatore": {
    "name": "Coimbatore",
    "country": "India",
    "lat": 11.00555,
    "lon": 76.96612
  },
  "Amritsar": {
    "name": "Amritsar",
    "country": "India",
    "lat": 31.62234,
    "lon": 74.87534
  },
  "Queens": {
    "name": "Queens",
    "country": "United States",
    "lat": 40.68149,
    "lon": -73.83652
  },
  "Caracas": {
    "name": "Caracas",
    "country": "Venezuela, Bolivarian Rep. of",
    "lat": 10.48801,
    "lon": -66.87919
  },
  "Durban": {
    "name": "Durban",
    "country": "South Africa",
    "lat": -29.8579,
    "lon": 31.0292
  },
  "Omdurman": {
    "name": "Omdurman",
    "country": "Sudan, The Republic of",
    "lat": 15.64453,
    "lon": 32.47773
  },
  "Khartoum": {
    "name": "Khartoum",
    "country": "Sudan, The Republic of",
    "lat": 15.55177,
    "lon": 32.53241
  },
  "Belgrade": {
    "name": "Belgrade",
    "country": "Serbia",
    "lat": 44.80401,
    "lon": 20.46513
  },
  "Stockholm": {
    "name": "Stockholm",
    "country": "Sweden",
    "lat": 59.32938,
    "lon": 18.06871
  },
  "Yerevan": {
    "name": "Yerevan",
    "country": "Armenia",
    "lat": 40.18111,
    "lon": 44.51361
  },
  "Melbourne": {
    "name": "Melbourne",
    "country": "Australia",
    "lat": -37.814,
    "lon": 144.96332
  },
  "Omsk": {
    "name": "Omsk",
    "country": "Russian Federation",
    "lat": 54.99244,
    "lon": 73.36859
  },
  "Kuala Lumpur": {
    "name": "Kuala Lumpur",
    "country": "Malaysia",
    "lat": 3.1412,
    "lon": 101.68653
  },
  "Peshawar": {
    "name": "Peshawar",
    "country": "Pakistan",
    "lat": 34.008,
    "lon": 71.57849
  },
  "Iztapalapa": {
    "name": "Iztapalapa",
    "country": "Mexico",
    "lat": 19.35529,
    "lon": -99.06224
  },
  "Ghaziabad": {
    "name": "Ghaziabad",
    "country": "India",
    "lat": 28.66535,
    "lon": 77.43915
  },
  "Ahmedabad": {
    "name": "Ahmedabad",
    "country": "India",
    "lat": 23.02579,
    "lon": 72.58727
  },
  "Montreal": {
    "name": "Montreal",
    "country": "Canada",
    "lat": 45.50884,
    "lon": -73.58781
  },
  "Medellin": {
    "name": "Medellin",
    "country": "Colombia",
    "lat": 6.25184,
    "lon": -75.56359
  },
  "Zhengzhou": {
    "name": "Zhengzhou",
    "country": "China",
    "lat": 34.75778,
    "lon": 113.64861
  },
  "Xianyang": {
    "name": "Xianyang",
    "country": "China",
    "lat": 34.33778,
    "lon": 108.70261
  },
  "Nizhniy Novgorod": {
    "name": "Nizhniy Novgorod",
    "country": "Russian Federation",
    "lat": 56.32867,
    "lon": 44.00205
  },
  "Moscow": {
    "name": "Moscow",
    "country": "Russian Federation",
    "lat": 55.75222,
    "lon": 37.61556
  },
  "Lagos": {
    "name": "Lagos",
    "country": "Nigeria",
    "lat": 6.45407,
    "lon": 3.39467
  },
  "Gujranwala": {
    "name": "Gujranwala",
    "country": "Pakistan",
    "lat": 32.15567,
    "lon": 74.18705
  },
  "Ouagadougou": {
    "name": "Ouagadougou",
    "country": "Burkina Faso",
    "lat": 12.36566,
    "lon": -1.53388
  },
  "Santa Cruz de la Sierra": {
    "name": "Santa Cruz de la Sierra",
    "country": "Bolivia",
    "lat": -17.78629,
    "lon": -63.18117
  },
  "Zhaoqing": {
    "name": "Zhaoqing",
    "country": "China",
    "lat": 23.04893,
    "lon": 112.46091
  },
  "Wuxi": {
    "name": "Wuxi",
    "country": "China",
    "lat": 31.56887,
    "lon": 120.28857
  },
  "Suqian": {
    "name": "Suqian",
    "country": "China",
    "lat": 33.94917,
    "lon": 118.29583
  },
  "Meishan": {
    "name": "Meishan",
    "country": "China",
    "lat": 30.04392,
    "lon": 103.83696
  },
  "Changzhou": {
    "name": "Changzhou",
    "country": "China",
    "lat": 31.77359,
    "lon": 119.95401
  },
  "Hezhou": {
    "name": "Hezhou",
    "country": "China",
    "lat": 24.40357,
    "lon": 111.56675
  },
  "Brisbane": {
    "name": "Brisbane",
    "country": "Australia",
    "lat": -27.46794,
    "lon": 153.02809
  },
  "Kota Bharu": {
    "name": "Kota Bharu",
    "country": "Malaysia",
    "lat": 6.12361,
    "lon": 102.24333
  },
  "Volgograd": {
    "name": "Volgograd",
    "country": "Russian Federation",
    "lat": 48.71939,
    "lon": 44.50183
  },
  "Manhattan": {
    "name": "Manhattan",
    "country": "United States",
    "lat": 40.78343,
    "lon": -73.96625
  },
  "Guarulhos": {
    "name": "Guarulhos",
    "country": "Brazil",
    "lat": -23.46278,
    "lon": -46.53333
  },
  "Manaus": {
    "name": "Manaus",
    "country": "Brazil",
    "lat": -3.10194,
    "lon": -60.025
  },
  "Santiago de los Caballeros": {
    "name": "Santiago de los Caballeros",
    "country": "Dominican Republic",
    "lat": 19.4517,
    "lon": -70.69703
  },
  "Algiers": {
    "name": "Algiers",
    "country": "Algeria",
    "lat": 36.73225,
    "lon": 3.08746
  },
  "Alexandria": {
    "name": "Alexandria",
    "country": "Egypt",
    "lat": 31.20176,
    "lon": 29.91582
  },
  "Xuchang": {
    "name": "Xuchang",
    "country": "China",
    "lat": 34.03189,
    "lon": 113.86299
  },
  "Xi'an": {
    "name": "Xi'an",
    "country": "China",
    "lat": 34.25833,
    "lon": 108.92861
  },
  "Changde": {
    "name": "Changde",
    "country": "China",
    "lat": 29.03205,
    "lon": 111.69844
  },
  "Shaoguan": {
    "name": "Shaoguan",
    "country": "China",
    "lat": 24.8,
    "lon": 113.58333
  },
  "Jilin": {
    "name": "Jilin",
    "country": "China",
    "lat": 43.85083,
    "lon": 126.56028
  },
  "Kowloon": {
    "name": "Kowloon",
    "country": "Hong Kong, China",
    "lat": 22.31667,
    "lon": 114.18333
  },
  "Nashik": {
    "name": "Nashik",
    "country": "India",
    "lat": 19.99727,
    "lon": 73.79096
  },
  "Lucknow": {
    "name": "Lucknow",
    "country": "India",
    "lat": 26.83928,
    "lon": 80.92313
  },
  "Bangkok": {
    "name": "Bangkok",
    "country": "Thailand",
    "lat": 13.75398,
    "lon": 100.50144
  },
  "Kaohsiung": {
    "name": "Kaohsiung",
    "country": "Taiwan, China",
    "lat": 22.61626,
    "lon": 120.31333
  },
  "Davao": {
    "name": "Davao",
    "country": "Philippines",
    "lat": 7.07306,
    "lon": 125.61278
  },
  "Rio de Janeiro": {
    "name": "Rio de Janeiro",
    "country": "Brazil",
    "lat": -22.90642,
    "lon": -43.18223
  },
  "Curitiba": {
    "name": "Curitiba",
    "country": "Brazil",
    "lat": -25.42778,
    "lon": -49.27306
  },
  "Tai'an": {
    "name": "Tai'an",
    "country": "China",
    "lat": 36.18528,
    "lon": 117.12
  },
  "Ningbo": {
    "name": "Ningbo",
    "country": "China",
    "lat": 29.87819,
    "lon": 121.54945
  },
  "Jiujiang": {
    "name": "Jiujiang",
    "country": "China",
    "lat": 29.70475,
    "lon": 116.00206
  },
  "Jiangmen": {
    "name": "Jiangmen",
    "country": "China",
    "lat": 22.58333,
    "lon": 113.08333
  },
  "Huizhou": {
    "name": "Huizhou",
    "country": "China",
    "lat": 23.11147,
    "lon": 114.41523
  },
  "Changzhi": {
    "name": "Changzhi",
    "country": "China",
    "lat": 36.18389,
    "lon": 113.10528
  },
  "Dazhou": {
    "name": "Dazhou",
    "country": "China",
    "lat": 31.21592,
    "lon": 107.50092
  },
  "Harbin": {"name": "Harbin", "country": "China", "lat": 45.75, "lon": 126.65},
  "Vienna": {
    "name": "Vienna",
    "country": "Austria",
    "lat": 48.20849,
    "lon": 16.37208
  },
  "Tripoli": {
    "name": "Tripoli",
    "country": "Libyan Arab Jamahiriya",
    "lat": 32.88743,
    "lon": 13.18733
  },
  "Surabaya": {
    "name": "Surabaya",
    "country": "Indonesia",
    "lat": -7.24917,
    "lon": 112.75083
  },
  "Visakhapatnam": {
    "name": "Visakhapatnam",
    "country": "India",
    "lat": 17.68009,
    "lon": 83.20161
  },
  "Dhanbad": {
    "name": "Dhanbad",
    "country": "India",
    "lat": 23.79759,
    "lon": 86.42992
  },
  "Tabriz": {
    "name": "Tabriz",
    "country": "Iran, Islamic Rep. of",
    "lat": 38.08,
    "lon": 46.2919
  },
  "Mashhad": {
    "name": "Mashhad",
    "country": "Iran, Islamic Rep. of",
    "lat": 36.29807,
    "lon": 59.60567
  },
  "Zapopan": {
    "name": "Zapopan",
    "country": "Mexico",
    "lat": 20.72356,
    "lon": -103.38479
  },
  "The Bronx": {
    "name": "The Bronx",
    "country": "United States",
    "lat": 40.84985,
    "lon": -73.86641
  },
  "San Jose": {
    "name": "San Jose",
    "country": "United States",
    "lat": 37.33939,
    "lon": -121.89496
  },
  "Adelaide": {
    "name": "Adelaide",
    "country": "Australia",
    "lat": -34.92866,
    "lon": 138.59863
  },
  "Chattogram": {
    "name": "Chattogram",
    "country": "Bangladesh",
    "lat": 22.3384,
    "lon": 91.83168
  },
  "Philadelphia": {
    "name": "Philadelphia",
    "country": "United States",
    "lat": 39.95233,
    "lon": -75.16379
  },
  "Bursa": {
    "name": "Bursa",
    "country": "Turkey",
    "lat": 40.19559,
    "lon": 29.06013
  },
  "Dar es Salaam": {
    "name": "Dar es Salaam",
    "country": "Tanzania, United Republic of",
    "lat": -6.82349,
    "lon": 39.26951
  },
  "Malingao": {
    "name": "Malingao",
    "country": "Philippines",
    "lat": 7.16083,
    "lon": 124.475
  },
  "Warsaw": {
    "name": "Warsaw",
    "country": "Poland",
    "lat": 52.22977,
    "lon": 21.01178
  },
  "Novosibirsk": {
    "name": "Novosibirsk",
    "country": "Russian Federation",
    "lat": 55.0415,
    "lon": 82.9346
  },
  "Kawasaki": {
    "name": "Kawasaki",
    "country": "Japan",
    "lat": 35.52056,
    "lon": 139.71722
  },
  "Sendai": {
    "name": "Sendai",
    "country": "Japan",
    "lat": 38.26667,
    "lon": 140.86667
  },
  "Almaty": {
    "name": "Almaty",
    "country": "Kazakhstan",
    "lat": 43.25,
    "lon": 76.91667
  },
  "Pimpri": {
    "name": "Pimpri",
    "country": "India",
    "lat": 18.62292,
    "lon": 73.80696
  },
  "Haora": {
    "name": "Haora",
    "country": "India",
    "lat": 22.57688,
    "lon": 88.31857
  },
  "Navi Mumbai": {
    "name": "Navi Mumbai",
    "country": "India",
    "lat": 19.03681,
    "lon": 73.01582
  },
  "La Paz": {
    "name": "La Paz",
    "country": "Bolivia",
    "lat": -16.5,
    "lon": -68.15
  },
  "Calgary": {
    "name": "Calgary",
    "country": "Canada",
    "lat": 51.05011,
    "lon": -114.08529
  },
  "Toronto": {
    "name": "Toronto",
    "country": "Canada",
    "lat": 43.70011,
    "lon": -79.4163
  },
  "Yulin": {
    "name": "Yulin",
    "country": "China",
    "lat": 22.6305,
    "lon": 110.14686
  },
  "Nanjing": {
    "name": "Nanjing",
    "country": "China",
    "lat": 32.06167,
    "lon": 118.77778
  },
  "Kaifeng": {
    "name": "Kaifeng",
    "country": "China",
    "lat": 34.7986,
    "lon": 114.30742
  },
  "Heze": {
    "name": "Heze",
    "country": "China",
    "lat": 35.23929,
    "lon": 115.47358
  },
  "Zhongshan": {
    "name": "Zhongshan",
    "country": "China",
    "lat": 22.52306,
    "lon": 113.37912
  },
  "Cape Town": {
    "name": "Cape Town",
    "country": "South Africa",
    "lat": -33.92584,
    "lon": 18.42322
  },
  "Damascus": {
    "name": "Damascus",
    "country": "Syrian Arab Republic",
    "lat": 33.5102,
    "lon": 36.29128
  },
  "Rostov-na-Donu": {
    "name": "Rostov-na-Donu",
    "country": "Russian Federation",
    "lat": 47.23135,
    "lon": 39.72328
  },
  "Kathmandu": {
    "name": "Kathmandu",
    "country": "Nepal",
    "lat": 27.70169,
    "lon": 85.3206
  },
  "Yangon": {
    "name": "Yangon",
    "country": "Myanmar",
    "lat": 16.80528,
    "lon": 96.15611
  },
  "Maiduguri": {
    "name": "Maiduguri",
    "country": "Nigeria",
    "lat": 11.84692,
    "lon": 13.15712
  },
  "Bhopal": {
    "name": "Bhopal",
    "country": "India",
    "lat": 23.25469,
    "lon": 77.40289
  },
  "Agra": {
    "name": "Agra",
    "country": "India",
    "lat": 27.18333,
    "lon": 78.01667
  },
  "Al Mawsil al Jadidah": {
    "name": "Al Mawsil al Jadidah",
    "country": "Iraq",
    "lat": 36.33271,
    "lon": 43.10555
  },
  "Tangerang": {
    "name": "Tangerang",
    "country": "Indonesia",
    "lat": -6.17806,
    "lon": 106.63
  },
  "Varanasi": {
    "name": "Varanasi",
    "country": "India",
    "lat": 25.31668,
    "lon": 83.01041
  },
  "Copenhagen": {
    "name": "Copenhagen",
    "country": "Denmark",
    "lat": 55.67594,
    "lon": 12.56553
  },
  "Xinyang": {
    "name": "Xinyang",
    "country": "China",
    "lat": 32.12278,
    "lon": 114.06556
  },
  "Weinan": {
    "name": "Weinan",
    "country": "China",
    "lat": 34.50355,
    "lon": 109.50891
  },
  "Shijiazhuang": {
    "name": "Shijiazhuang",
    "country": "China",
    "lat": 38.04139,
    "lon": 114.47861
  },
  "Hengyang": {
    "name": "Hengyang",
    "country": "China",
    "lat": 26.88946,
    "lon": 112.61888
  },
  "Changchun": {
    "name": "Changchun",
    "country": "China",
    "lat": 43.88,
    "lon": 125.32278
  },
  "Barquisimeto": {
    "name": "Barquisimeto",
    "country": "Venezuela, Bolivarian Rep. of",
    "lat": 10.0647,
    "lon": -69.35703
  },
  "Shiyan": {
    "name": "Shiyan",
    "country": "China",
    "lat": 32.6475,
    "lon": 110.77806
  },
  "Jining": {
    "name": "Jining",
    "country": "China",
    "lat": 35.405,
    "lon": 116.58139
  },
  "Huzhou": {
    "name": "Huzhou",
    "country": "China",
    "lat": 30.8703,
    "lon": 120.0933
  },
  "Chengdu": {
    "name": "Chengdu",
    "country": "China",
    "lat": 30.66667,
    "lon": 104.06667
  },
  "Houston": {
    "name": "Houston",
    "country": "United States",
    "lat": 29.76328,
    "lon": -95.36327
  },
  "Kalyan": {
    "name": "Kalyan",
    "country": "India",
    "lat": 19.2437,
    "lon": 73.13554
  },
  "Jaipur": {
    "name": "Jaipur",
    "country": "India",
    "lat": 26.91962,
    "lon": 75.78781
  },
  "Shiraz": {
    "name": "Shiraz",
    "country": "Iran, Islamic Rep. of",
    "lat": 29.61031,
    "lon": 52.53113
  },
  "Amman": {
    "name": "Amman",
    "country": "Jordan",
    "lat": 31.95522,
    "lon": 35.94503
  },
  "Fukuoka": {
    "name": "Fukuoka",
    "country": "Japan",
    "lat": 33.6,
    "lon": 130.41667
  },
  "Goyang-si": {
    "name": "Goyang-si",
    "country": "Korea, Republic of",
    "lat": 37.65639,
    "lon": 126.835
  },
  "Antananarivo": {
    "name": "Antananarivo",
    "country": "Madagascar",
    "lat": -18.91368,
    "lon": 47.53613
  }
};
