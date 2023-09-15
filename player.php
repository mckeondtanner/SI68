<style>
    th {
        text-align: center;
        border-style: groove;
        border-color: #000000;
        font-family: "Times New Roman", Times, serif;
    }
</style>
<style>
    td {
        text-align: center;
        border-style: groove;
        border-color: #C0C0C0;
        font-family: "Times New Roman", Times, serif;
    }
</style>

<?php
$con=mysqli_connect("db.luddy.indiana.edu", "i308s23_mdtanner", "my+sql=i308s23_mdtanner", "i308s23_mdtanner");
if (!$con)
	{die("Failed to connect to MySQL: " . mysqli_connect_error()); }

$sql = "SELECT a.name AS 'archipelago', i.name AS 'islet', p.board AS 'board', p.discord AS 'discord', p.spirit AS 'spirit', p.aspect AS 'aspect', i.iid
FROM player AS p
JOIN archipelago AS a ON p.AID = a.AID
JOIN islet AS i ON p.IID = i.IID
ORDER BY i.iid, board";

$result = mysqli_query($con, $sql);
    $num_rows = mysqli_num_rows($result);
    if ($num_rows > 0) {
           echo "<table>";
           echo "<tr>
                           <th>Archipelago</th>
                           <th>Islet</th>
                           <th>Board</th>
                           <th>Discord Alias</th>
                           <th>Spirit</th>
                           <th>Aspect</th>
                   </tr>";
           while($row = mysqli_fetch_assoc($result)) {
                   echo "<tr>
                            <td>" . $row["archipelago"]."</td>
                            <td>" . $row["islet"]."</td>
                            <td>" . $row["board"]."</td>
                            <td>" . $row["discord"]."</td>
                            <td>" . $row["spirit"]."</td>
                            <td>" . $row["aspect"]."</td>                               
                           </tr>";
           }
           echo "<table>";
    } else { echo "Page is currently under maintainance. (What actually is happening is that I am trying to edit the page, but I suck and caused an error in the code."; }
    ?>