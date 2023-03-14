
<link rel="stylesheet" href="style.css">

<?php
	
		$pesel=$_POST['pesel'];

	
	$conn= new mysqli ("localhost", "root", "","pomiarcisnienia", 3308)or die ("Błąd połaczenia");
	
	
	$conn->query ('SET NAMES utf8');
	$conn->query ('SET CHARACTER_SET utf8_unicode_ci');
	
	
	$pomiar= $conn->query("select Pacjent.Imie, Pacjent.Nazwisko, Pomiar.PeselPacjenta, Pomiar.DataPomiaru, Pomiar.GodzinaPomiaru,
	Pomiar.CisnienieSkurczowe, Pomiar.CisnienieRozkurczowe, Pomiar.Tetno, Pomiar.Uwagi 
	FROM pomiarcisnienia.Pacjent JOIN pomiarcisnienia.Pomiar on Pacjent.Pesel=Pomiar.PeselPacjenta
	where PeselPacjenta=$pesel");
	
		
	if ($pomiar->num_rows>0) 
	{
	echo "<table>";
	echo " <tr>";
	echo "<th> Imie </th>";
	echo "<th> Nazwisko</th>";
	echo "<th> Pesel pacjenta </th>";
	echo "<th> Data pomiaru </th>";
	echo "<th> Godzina pomiaru </th>";
	echo "<th> Ciśnienie skurczowe </th>";
	echo "<th> Ciśnienie rozkurczowe </th>";
	echo "<th>Tętno </th>";
	echo "<th>Uwagi</th>";
	echo " </tr>";
	
		
	while ($wiersz=$pomiar->fetch_assoc())
	{   
		echo " <tr>";
		echo "<td>".$wiersz['Imie']."</td>";
		echo "<td>".$wiersz['Nazwisko']."</td>";
		echo "<td>".$wiersz['PeselPacjenta']."</td>";
		echo "<td>".$wiersz['DataPomiaru']."</td>";
		echo "<td>". $wiersz['GodzinaPomiaru']. "</td> ";
		echo "<td>". $wiersz['CisnienieSkurczowe']. "</td> ";
		echo "<td>". $wiersz['CisnienieRozkurczowe']. "</td> ";
		echo "<td>". $wiersz['Tetno']. "</td> ";
		echo "<td>". $wiersz['Uwagi']. "</td> ";
		echo "</tr>";
	}
	echo "</table>";
	}
	else
	{
		echo ("Baza jest pusta");
	}
	
	
	
	$conn->close ();







?>