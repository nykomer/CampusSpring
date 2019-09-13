<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Inserimento Facolt�</title>
</head>
<%@ include file="/jsp/templates/header.jspf" %>

<!-- Contenuto pagina centrale -->
<div class="container-fluid">

	<!-- Content Row -->
	<div class="row">

		<!-- Content Column -->
		<div class="col-lg-12 mb-4">
			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Inserimento
						Facolt�</h6>
				</div>
				<div class="card-body">

					<!-- INSERIRE CONTENUTO -->
					<form:form action="${pageContext.request.contextPath }/inserimentoFacolta" method="post" modelAttribute="newFacolta">
						<label path="facolta">Facolt�: </label><br> 
						<form:input path="facolta"/><br>
							<input class="btn btn-success btn-icon-split"
							type="submit" />
					</form:form>
					<!-- CONTENUTO -->

				</div>
			</div>
		</div>
		<!-- End Content Column -->


		<!-- Content Column -->
		<div class="col-lg-12 mb-4">
			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Inserimento Corsi</h6>
				</div>
				<div class="card-body">

					<!-- INSERIRE CONTENUTO -->
					<form:form  action="${pageContext.request.contextPath }/inserimentoCorso" method="post" modelAttribute="newCorso">
						<form:label path="corso">Corso: </form:label><br> 
						<form:input path="corso"/><br>
						<form:errors path="corso"/>
						
							<input class="btn btn-success btn-icon-split" type="submit" />
					</form:form>
					<!-- CONTENUTO -->

				</div>
			</div>
		</div>
		<!-- End Content Column -->



		<!-- Content Column -->
		<div class="col-lg-12 mb-4">
			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Aggiungi corsi a
						Facolt�</h6>
				</div>
				<div class="card-body">

					<!-- INSERIRE CONTENUTO -->
					<form:form action="corso-facolta" method="post" >
					
						<label for="facoltaId">Facolta: </label>
  						<select name="facoltaId">
  						<c:forEach items="${facolta}" var="f">
  						<option value="${f.id}"> 
  						${f.facolta}
  						 </option>
  			
  						</c:forEach>
  						</select>
  						<label for="corsoId">Corso</label>
  						<select name="corsoId">
						<c:forEach items="${corsi}" var="c">
  						<option value="${c.id}"> 
  						${c.corso}
  						 </option>
  			
  						</c:forEach>
  						</select>
  						
						 <input class="btn btn-success btn-icon-split"
							type="submit" />
					</form:form>
					<!-- CONTENUTO -->

				</div>
			</div>
		</div>
		<!-- End Content Column -->


		<!-- Content Column -->
		<div class="col-lg-12 mb-4">
			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Rimozione Corsi o Facolt�</h6>
				</div>
				<div class="card-body">

					<!-- INSERIRE CONTENUTO -->

					<table>
						<tr>
							<th>Facolta</th>
							<th>Elimina</th>
						</tr>
						<c:forEach items="${facolta}" var="fac">
							<tr>
								<td><a href="Facolta/${fac.id}">${fac.facolta}</a></td>
								<td><a href="rimuoviFacolta/${fac.id}">Rimuovi</a></td>
							</tr>
						</c:forEach>
					</table>
					
					<br>

					<table>
						<tr>
							<th>Corsi</th>
							<th>Elimina</th>
						</tr>
						<c:forEach items="${corsi}" var="cor">
							<tr>
								<td>${cor.corso}</td>
								<td><a href="rimuoviCorso/${cor.id}">Rimuovi</a></td>
							</tr>
						</c:forEach>
					</table>


					<!-- CONTENUTO -->

				</div>
			</div>
		</div>
		<!-- End Content Column -->



	</div>
	<!-- /.container-fluid -->

</div>
<!-- Fine Contenuto pagina centrale -->


<%@ include file="/jsp/templates/footer.jspf" %>