<jsp:include page="../shared/_layout.jsp" />

<b>${message}</b>
<br>

<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center"><b>SIGN UP</b></h3>
	<p class="w3-center w3-large">You already have account? sign in to our website:</p>
	<div style="margin-top: 48px">

		<form action="${appName}login" method="post">
			<p>
				<input class="w3-input w3-border" type="email"
					placeholder="Email Address" required="" name="username">
			</p>

			<p>
				<input class="w3-input w3-border" type="password"
					placeholder="Password" required="" name="password">
			</p>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<p>
				<button class="w3-button w3-black" type="submit">
					<i class="fa fa-paper-plane"></i> SIGN IN
				</button>
			</p>

		</form>

	</div>
</div>