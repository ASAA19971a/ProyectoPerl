#!"C:\xampp\perl\bin\perl.exe"
use CGI qw(:standard);
my $nombre = param('nombre');
my $apellido = param('apellido');
my $correo = param('correo');
my $direccion = param('direccion');
my $telefono1 = param('telefono1');



my $p1 = param('p1');
my $p2 = param('p2');
my $p3 = param('p3');
my $p4 = param('p4');
my $p5 = param('p5');
my $p6 = param('p6');
my $p7 = param('p7');


my $c1 = param('c1');
my $c2 = param('c2');
my $c3 = param('c3');
my $c4 = param('c4');
my $c5 = param('c5');
my $c6 = param('c6');
my $c7 = param('c7');



my $tipoEntrega = param('tipoEntrega');
my $fechaEntrega = param('fechaEntrega');
my $observaciones = param('observaciones');


print "Content-type: text/html\n\n";
print '<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLORERIA</title>
    <!-- CDN BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- CDN FONT AWESOME -->
    <script src="https://kit.fontawesome.com/cb2bd7ba30.js" crossorigin="anonymous"></script>


    <link rel="shortcut icon" href="img/LOGO.png" type="image/x-icon">


</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand font-italic logo" href="../../Proyecto_Perl/productos.html"><i class="fas fa-seedling"></i> Floreria</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a href="../../Proyecto_Perl/Login.html" class="navbar-brand">Cerrar Sesion</a>
    </nav>';



print '<div class="container p-4">
        <div class="row">
            <div class="col-md-6">
                <h2>Factura</h2>
            </div>
            <div class="col-md-6 text-right">
                <p><strong>Fecha: </strong>05/03/2021</p>
                <p><strong>Factura #: </strong>001</p>
                <p><strong>Vence: </strong>20/03/2021</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 ">
                <p><strong>Nombre: </strong>'.$nombre.'</p>
                <p><strong>Apellido: </strong>'.$apellido.'</p>
                <p><strong>Correo: </strong>'.$correo.'</p>
            </div>
            <div class="col-md-6 ">
                <p><strong>Dirección: </strong>'.$direccion.'</p>
                <p><strong>Teléfono: </strong>'.$telefono1.'</p>

            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-6 ">
                <p><strong>Tipo de Entega: </strong>'.$tipoEntrega.'</p>

            </div>
            <div class="col-md-6 ">

                <p><strong>Fecha de Entrega: </strong>'.$fechaEntrega.'</p>
            </div>

        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Total</th>
                </tr>
            </thead>';

my $total1 = $c1*6.50;
if($p1 == "cumpleanos")
{
    
    print ' <tr>
                <td>1</td>
                <td>Cumpleaños</td>
                <td>$6.50</td>
                <td>'.$c1.'</td>   
                <td>$'.$total1.'</td>
            </tr>';
    
    
}
my $total2 = $c2*7.75;
if($p2 == "san_valentin")
{
    
    print ' <tr>
                <td>2</td>
                <td>San Valentin</td>
                <td>$7.75</td>
                <td>'.$c2.'</td>
                <td>$'.$total2.'</td>
            </tr>';
            
}
my $total3 = $c3*8.25;
if($p3 == "mixtos")
{
    
    print ' <tr>
                <td>3</td>
                <td>Arreglos Mixtos</td>
                <td>$8.25</td>
                <td>'.$c3.'</td>
                <td>$'.$total3.'</td>
            </tr>';
            
}
my $total4 = $c4*15;
if($p4 == "bodas")
{
    
    print ' <tr>
                <td>4</td>
                <td>Bodas</td>
                <td>$15</td>
                <td>'.$c4.'</td>
                <td>$'.$total4.'</td>
            </tr>';
            
}
my $total5 = $c5*7;
if($p5 == "reuniones")
{
    
    print ' <tr>
                <td>5</td>
                <td>Reuniones</td>
                <td>$7</td>
                <td>'.$c5.'</td>
                <td>$'.$total5.'</td>
            </tr>';
            
}
my $total6 = $c6*8;
if($p6 == "personalizados")
{
    
    print ' <tr>
                <td>6</td>
                <td>Personalizados</td>
                <td>$8</td>
                <td>'.$c6.'</td>
            $    
                
                <td>'.$total6.'</td>
            </tr>';
            
}
my $total7 = $c7*12.50;
if($p7 == "baby_shower")
{
    
    print ' <tr>
                <td>7</td>
                <td>Baby shower</td>
                <td>$12.50</td>
                <td>'.$c7.'</td>
                <td>$'.$total7.'</td>
            </tr>';
            
}    



my $subtotal = $total1+$total2+$total3+$total4+$total5+$total6+$total7;
my $iva = $subtotal*0.12;
my $pagar = $subtotal+$iva;
print ' <tr>
                <td colspan="3">
                    <h3> Observaciones</h3>
                    <p>'.$observaciones.'</p>
                </td>
                <td>
                    <p> <strong>Subtotal:</strong> </p>
                    <p> <strong>Iva 12%:</strong> </p>
                    <p> <strong>Total:</strong> </p>
                </td>
                <td>
                    <p>$'.$subtotal.'</p>
                    <p>$'.$iva.'</p>
                    <p>$'.$pagar.' </p>
                </td>

            </tr>
            
        </table>
    </div>';













print '  <footer class="bg-dark p-4">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <p class="text-white "> Copyright &copy;ASMCWP </p>
                    <p class="text-white-50">Creado por Abel Acosta , Mayra Carrión, Wilson Porras</p>
                </div>
                <div class="col-md-6 col-sm-12"></div>
                <div class="col-md-3 text-white">
                    <a class="btn btn-primary" href=""><i class="fa fa-facebook"></i></a>
                    <a class="btn btn-danger" href=""><i class="fa fa-instagram"></i></a>
                    <a class="btn btn-info" href=""><i class="fa fa-twitter"></i></a>
                    <a class="btn btn-success" href=""><i class="fa fa-whatsapp"></i></a>

                </div>
            </div>
        </div>
    </footer>

    <!-- CDN BOOTSTRAP -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>

    <!-- CDN FONT AWESOME -->
    <script src="https://kit.fontawesome.com/cb2bd7ba30.js" crossorigin="anonymous"></script>



</body>

</html>';