
<!DOCTYPE html>
<html>
    <head></head>
    <body>
        <table style="width:100%">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        <?php
            $numberOfRows = 100;

            while ($numberOfRows > 0) 
            {
                echo 
                "
                <tr>
                    <th>" . $numberOfRows . "</th>
                    <th>THE" . $numberOfRows . "</th>
                    <th>" . $numberOfRows * 7 . "</th>
                </tr>
                ";
            }
        ?>
            
        </table>
    </body>
</html>
