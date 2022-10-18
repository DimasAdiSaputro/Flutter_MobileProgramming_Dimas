	import 'package:app_kelas/hello_world.dart';
  import 'package:app_kelas/ui/produk_form.dart';  
  import 'package:app_kelas/ui/produk_detail.dart';
  import 'package:app_kelas/ui/produk_page.dart';
	import 'package:flutter/material.dart';  
	  
	void main() {  
	  runApp(MyApp());  
	}  
	  
	class MyApp extends StatelessWidget {  
	  @override  
	  Widget build(BuildContext context) {  
	    return MaterialApp(  
	      title: 'Aplikasi Flutter Pertama',  
	      home: ProdukPage(),  
	    );  
	  }  
	}  
