let index = {
	init: function() {
		$("#btn-save").on("click", () => {
			this.save();
		});
		$("#btn-delete").on("click", () => {
			this.deleteById();
		});
		$("#btn-update").on("click", () => {
			this.update();
		});
		$("#btn-reply-save").on("click", () => {
			this.replySave();
		});
	},
	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
		};
		$.ajax({
			type: "POST",
			url: "/api/board",
			data: JSON.stringify(data),
			contentType: "application/json; chatset=usf-8",
			dataType: "json"
		}).done(function(resp) {
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	deleteById: function() {
		let id = $("#id").text();
		$.ajax({
			type: "DELETE",
			url: "/api/board/" + id,
			dataType: "json"
		}).done(function(resp) {
			if (!confirm("삭제하시겠습니까?")) {
				alert("취소 되었습니다.");
			} else {
				alert("삭제 되었습니다.");
			}
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	update: function() {
		let id = $("#id").val();

		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
		};
		$.ajax({
			type: "PUT",
			url: "/api/board/" + id,
			data: JSON.stringify(data),
			contentType: "application/json; chatset=usf-8",
			dataType: "json"
		}).done(function(resp) {
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	replySave: function() {
		let data = {
			content: $("#reply-content").val()
		};
		let boardId = $("#boardId").val();
		
		$.ajax({
			type: "POST",
			url: `/api/board/${boardId}/reply`,
			data: JSON.stringify(data),
			contentType: "application/json; chatset=usf-8",
			dataType: "json"
		}).done(function(resp) {
			location.href = `/board/${boardId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function(boardId,replyId) {
		$.ajax({
			type: "DELETE",
			url: `/api/board/${boardId}/reply/${replyId}`,
			dataType: "json"
		}).done(function(resp) {
		if (!confirm("삭제하시겠습니까?")) {
				alert("취소 되었습니다.");
			} else {
				alert("삭제 되었습니다.");
			}
			location.href = `/board/${boardId}`;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
}

index.init();