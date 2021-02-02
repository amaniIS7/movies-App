<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.h3 {
	color: grey;
	font-size: 18px;
}

h5 {
	text-decoration: none;
	font-size: 22px;
	color: black;
}
</style>
<div class="card">
	</br> <img id="output" width="150"
		class="w-100 rounded-circle rounded float-start" /> <br> <input
		type="file" accept="image/*" id="file" onchange="loadFile(event)">
	<input name="poster" type="hidden" id="sendposter">



	<!-- <div class="col-md-6 mb-md-0 p-md-4">
		<img src="https://dog.ceo/api/breeds/image/random Fetch!" class="w-100 rounded-circle rounded float-start">
	</div> -->
	<h3>${user.userName}</h3>
	<p>${user.firstName} ${user.lastName}</p>
	<p>${user.emailAddress}</p>
</div>


<!-- script -->
<script>
	var loadFile = function(event) {
		var image = document.getElementById('output');
		var url = URL.createObjectURL(event.target.files[0]);
		console.log(url);
		image.src = url;
		document.getElementById("sendposter").setAttribute("value", url);
	};
	/* document.getElementById('output').addEventListener('click', function(event) {
	 var image = document.getElementById('output');
	 var url = URL.createObjectURL(event.target.files[0]);
	 console.log(url);
	 image.src = url;
	 document.getElementById("sendposter").setAttribute("value", url);
	 }); */
</script>


