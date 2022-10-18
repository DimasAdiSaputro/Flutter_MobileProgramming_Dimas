import 'package:app_kelas/ui/produk_form.dart'; 
import 'package:app_kelas/ui/produk_detail.dart'; 
import 'package:flutter/material.dart';  
	  
	class ProdukPage extends StatefulWidget {  
	  @override  
	  _ProdukPageState createState() => _ProdukPageState();  
	}  
	  
	class _ProdukPageState extends State<ProdukPage> {  
	  @override  
	  Widget build(BuildContext context) {  
	    return Scaffold(  
	      appBar: AppBar(  
	        title: Text("Data Produk"), 
          actions: [  
            GestureDetector(  
              // menampilkan icon +
              child: Icon(Icons.add),  
              //pada saat icon + di tap  
              onTap: () async {  
                //berpindah ke halaman ProdukForm  
                Navigator.push(context,new MaterialPageRoute(builder: (context) => ProdukForm()));  
              },  
            )  
          ],   
	      ),  
	      body: ListView(  
	        children: [ 
          //list 1
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          //list 2
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "LED 32 inch",
            harga: 5000000,
          ),
          //list 3
           ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
	        ],  
	      ),  
	    );  
	  }  
	} 

  class ItemProduk extends StatelessWidget {
    final String kodeProduk;
    final String namaProduk;
    final int harga;
    //membuat constructor
    ItemProduk({this.kodeProduk, this.namaProduk, this.harga});
    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        child: Card(
          child: ListTile(
          title: Text(namaProduk),
        subtitle: Text(harga.toString()), //parsing dari int ke string
        ),
        ),
          onTap: () {
// pindah ke halaman Produk Detail dan mengirim data
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
              )));
      }
      );
    }
  }