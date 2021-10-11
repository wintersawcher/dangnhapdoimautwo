import 'package:flutter/cupertino.dart';

import 'Student.dart';
import 'students.dart';

class Students with ChangeNotifier{
List<Student> items =[
  Student(
    id: 'p1',
    name: 'Đỗ Anh Vũ',
    address: 'Quảng Ninh!',
    phone: 65656562999,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
  Student(
    id: 'p2',
    name: 'Kiều Yến Vy',
    address: 'Hạ Long.',
    phone: 56565655999,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
  ),
  Student(
    id: 'p3',
    name: 'Huyền Trang',
    address: 'Đông Anh.',
    phone: 6565656561999,
    imageUrl:
    'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
  ),
  Student(
    id: 'p4',
    name: 'Nhi ',
    address: 'Uông Bí.',
    phone: 6565656564999,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
  ),

];
Student findById(String id){
  return items.firstWhere((prod) => prod.id  == id);
}
}