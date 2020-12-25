import 'package:project1/models/department.dart';
import 'package:project1/models/product.dart';
import 'package:project1/models/store.dart';

Map departments = {
  'en': [
    Department(),
    Department(name: 'Appel', image: 'assets/images/appel.jpg', id: 1),
    Department(name: 'Xiaomi', image: 'assets/images/xiaomi.jpg', id: 5),
    Department(name: 'Sony', image: 'assets/images/sony.jpg', id: 3),
    Department(name: 'Oppo', image: 'assets/images/opppo.jpg', id: 4),
    Department(name: 'Huawei', image: 'assets/images/huawei.jpg', id: 6),
    Department(name: 'Samsung', image: 'assets/images/Samsung.jpg', id: 2),
  ],
  'ar': [
    Department(),
    Department(name: 'ابل', image: 'assets/images/appel.jpg', id: 1),
    Department(name: 'شاومي', image: 'assets/images/xiaomi.jpg', id: 5),
    Department(name: 'سوني', image: 'assets/images/sony.jpg', id: 3),
    Department(name: 'اوبو', image: 'assets/images/opppo.jpg', id: 4),
    Department(name: 'هواوي', image: 'assets/images/huawei.jpg', id: 6),
    Department(name: 'سامسنج', image: 'assets/images/Samsung.jpg', id: 2),
  ]
};

Map stores = {
  'en': [
    Store(
      id: 1,
      title: 'Ahmed Store ',
      subTitle: 'Ahmed Store Ahmed Store',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 2,
      title: 'City Store ',
      subTitle: 'City Store City Store',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 3,
      title: 'Mobile Zoon',
      subTitle: 'Mobile Zoon Mobile Zoon ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 4,
      title: 'Shady Center',
      subTitle: 'Shady Center Shady Center ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 5,
      title: 'Aldanf Center',
      subTitle: 'Aldanf Center Aldanf Center ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    )
  ],
  'ar': [
    Store(
      id: 1,
      title: 'متجر احمد ',
      subTitle: 'متجر احمد',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 2,
      title: 'متجر المدينة ',
      subTitle: 'متجر المدينة ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 3,
      title: 'موبايل زون',
      subTitle: 'موبايل زون',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 4,
      title: 'متجر شادي',
      subTitle: 'متجر شادي ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    ),
    Store(
      id: 5,
      title: 'متجر الدنف',
      subTitle: 'متجر الدنف ',
      image: 'assets/images/store.jpg',
      departmentId: 1,
    )
  ]
};

Map products = {
  'en': [
    Product(
        image: 'assets/images/iphone12.webp',
        name: 'iphone12 pro max',
        price: '1200 \$',
        id: 1,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'Apple iPhone 12',
        price: '980 \$',
        id: 2,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'Apple iPhone XR',
        price: '750 \$',
        id: 3,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
    Product(
        image: 'assets/images/appel_iphone_11.webp',
        name: 'Apple iPhone 11',
        price: '900 \$',
        id: 4,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'Apple iPhone 12',
        price: '980 \$',
        id: 5,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
    Product(
        image: 'assets/images/appel_iphone_xr_.webp',
        name: 'Apple iPhone XR',
        price: '750 \$',
        id: 6,
        storeId: 1,
        description:
            'Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black Apple iPhone 11 64GB, Black '),
  ],
  'ar': [
    Product(
        image: 'assets/images/iphone12.webp',
        name: 'ايفون 11 برو ماكس',
        price: '1200 \$',
        id: 1,
        storeId: 1,
        description: 'ايفون 11 برو ماكس اللون اسود ذاكره 128 مع رام 8 جيجا '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'ايفون 11',
        price: '980 \$',
        id: 2,
        storeId: 1,
        description: 'ايفون 11 برو عادي اللون اسود ذاكره 128 مع رام 8 جيجا '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'ايفون xr',
        price: '750 \$',
        id: 3,
        storeId: 1,
        description: 'ايفون xr برو ماكس اللون اسود ذاكره 128 مع رام 8 جيجا '),
    Product(
        image: 'assets/images/appel_iphone_11.webp',
        name: 'ايفون 11',
        price: '900 \$',
        id: 4,
        storeId: 1,
        description: 'ايفون 11 برو ماكس اللون اسود ذاكره 128 مع رام 8 جيجا '),
    Product(
        image: 'assets/images/appel_iphone12.webp',
        name: 'ايفون 12',
        price: '980 \$',
        id: 5,
        storeId: 1,
        description: 'ايفون 11 برو عادي اللون اسود ذاكره 128 مع رام 8 جيجا '),
    Product(
        image: 'assets/images/appel_iphone_xr_.webp',
        name: 'ايفون xr',
        price: '750 \$',
        id: 6,
        storeId: 1,
        description: 'ايفون xr برو ماكس اللون اسود ذاكره 128 مع رام 8 جيجا  '),
  ]
};
