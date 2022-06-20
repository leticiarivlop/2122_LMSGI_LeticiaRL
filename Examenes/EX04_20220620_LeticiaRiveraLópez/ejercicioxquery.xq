 <html>
            <head>
                <title>Madrid.LeticiaRiveralópez</title>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <table>
                    <thead>
                        <caption>El tiempo en   {for $a in doc('eltiempo')//data return"locality/name"}</caption>
                        <caption>Pronostico 7 dias|El tiempo por Tutiempo.net</caption>
                            <tr>
                                <th>Temperatura Max</th>
                                <th>temperatura min</th>
                                 <th></th>
                            </tr>
                    </thead>
                    <tbody>
                        {for $a in doc('eltiempo')//data return "day"}
                            <tr>
                                <td> {for $a in doc('eltiempo')//data return "temperature_max"}</td>
                                <td> {for $a in doc('eltiempo')//data return "temperature_min"}</td>
                            </tr>
                    </tbody>
                </table>
                <footer>
                     {for $a in doc('eltiempo')//data return "copyright"},
                     {for $a in doc('eltiempo')//data return  "use"}
                </footer>
                </body>
                </html>