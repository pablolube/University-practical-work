program catalogo;


uses UABBgenerico,UProductoEnGondola,Ucadena,Urandomgenerator,Uverduleria;





procedure cargararbol(var arbol: abbhistorial);
var
  rg: randomgenerator;
  nombre_prod: string;
  precio:real;
  stock:real;
  producto:ProductoEnGondola;
  clave:comparable;

  begin
rg := randomgenerator.create;
rg.addlabel('Zanahoria');
rg.addlabel('Lechuga');
rg.addlabel('Tomate');
rg.addlabel('Frutilla');
rg.addlabel('Pepino');
rg.addlabel('Espárrago');
rg.addlabel('Calabacín');
rg.addlabel('Berenjena');
rg.addlabel('Tomatee');
rg.addlabel('Coliflor');
rg.addlabel('zzz');
rg.addlabel('Espinaca');
nombre_prod := rg.getlabel;
  //BUCLE
while nombre_prod <> 'zzz' do 
begin
writeln(nombre_prod);
precio:=rg.getreal(100,9999);
stock:=rg.getReal(1,100);
producto:=productoengondola.create(nombre_prod,precio,stock);
clave:=Cadena.create(nombre_prod);

arbol.agregar(clave, producto);
nombre_prod := rg.getlabel;
end; 
end;



var
arbol:abbhistorial;

begin
arbol:=abbhistorial.create();
cargararbol(arbol);
writeln('Arbol Ordenado');
arbol.imprimirEnOrden;



end.
