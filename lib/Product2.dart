class Product2 {
  String _nom="";
  double _prix=0;
  int _Q=0;
  String _image="";
 Product2(String N,double P,int q,String im){
  this._nom=N;
  this._prix=P;
  this._Q=q;
  this._image=im;
 }
 double calculerPrixTotal(){
  return this._prix*this._Q;
 }
 String getNom(){
  return this._nom;
 }
  String getImage(){
  return this._image;
 }
  double getPrix(){
  return this._prix;
 }
  int getQuantite(){
  return this._Q;
 }
 void setQuantite(int q){
  this._Q=q;
 }
}