<html>
<head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="robots" content="index,follow"/>
	      <meta name="description" content="Prototipo"/>
	      <meta name="keywords" content="HTML, CSS,XSLT,XML"/>
	      <meta name="author" content="Leticia Rivera López"/>
	      <meta http-equiv="refresh" content="300"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="../../images/favicon-32x32.png"/>
    <title>ExamenFinal ejercicio4</title>
    </head>
    <body>
      <h1>Análisis de datos</h1>
      {for $a in doc("ExamenFinal")//database/table_data
  return <h2>{concat("La tabla ",data($a/@name)," tiene ",count($a/row)," filas.")}</h2>
  }
    </body>
</html>