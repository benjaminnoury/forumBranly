---
title: Forum des anciens étudiants
---

<section>
<table >
	<thead>
		<tr>
			<th>Salle</th>
			<th>Ecoles</th> 
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG1">Écoles en alternances</a>
			</td>
			<td>
				ITII, ESILV, ISTP, IMT Lille Douai, ENSAM, CPE Lyon, ECAM Lyon, INSA, Polytech Grenoble.
			</td>
		</tr>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG2">École centrale et ENS</a>
			</td>
			<td>
				Centrale Lille, Centrale Marseille, Centrale Nantes, ENS Rennes.
			</td>
		</tr>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG3">Formation Initiale - Réseau Polytech</a>
			</td>
			<td>
Polytech Clermont (GE), Polytech Marseille (Génie industriel & Informatique), Polytech Nantes (Électronique et technologie numérique)
			</td>
		</tr>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG4">Formations Initiales</a>
			</td>
			<td>
				ECAM, ENSAM, ISAE-ENSMA, ISAT, ESTIA, ENSIL, ESIGELEC, SIGMA, IMT Lille-Douai
			</td>
		</tr>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG5">Formations Initiales</a>
			</td>
			<td>
				ESIX, ESIREM, ENSEM, Telecom Sud Paris, ENIS, CESI, ENSISA, ENSTA 
			</td>
		</tr>
		<tr>
			<td>
				<a href="https://meet.jit.si/Forum_Branly_SG6">Formations Initiales - élèves de TSI</a>
			</td>
			<td>
				INSA, ISAE, Polytech, SIGMA	
			</td>
		</tr>
	</tbody>
</table>
</section>
<section>
!csv(orga.csv)
</section>

<script>$(document).ready(function() {
	$('#tableau_ecole').DataTable({
		"paging":	false,
		"info":		false,		
		"language": {
		      "search": "Filtre: "
		      }
		  });
	});</script>

