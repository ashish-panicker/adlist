/**
 * All the client side form validations are included in this file jQuery for
 * validation plusing is ude to perfom all validations in the client side.
 * https://jqueryvalidation.org/
 */


/*
 * Validation rules for the login form
 */
$("#loginForm").validate({
	rules : {
		email : {
			required : true,
			email : true
		},
		password : {
			required : true
		},
	},
	messages : {
		email : {
			required : "Email is required",
			email : "Email should be in someone@domain.com"
		},
		password : {
			required : "Password is mandatory"
		},
	},
	errorElement : 'div',
	errorPlacement : function(error, element) {
		var placement = $(element).data('error');
		if (placement) {
			$(placement).append(error)
		} else {
			error.insertAfter(element);
		}
	}
});

/*
 * validation code for the post ad form
 */
$("#postForm").validate({
	rules: {
		title: { required: true },
		city: { required: true },
		category: { required: true, valueNotEquals:"default" },
		description: { required: true },
		zipcode: { required: true,digits: true, rangelength:[6,6]},
		email: { required: true, email: true },
		password: { required: true },
		phone: { required: true,  digits: true,  rangelength:[7,11]},
	},
	messages: {
		title: { required: "Title is required" },
		city: { required: "City is required" },
		zipcode: { required: "Zip code is required",digits: "Pin code cannot be alphabets",rangelength:"Pincode must have 6 digits" },
		category: { required: "First name is required", valueNotEquals:"Please select a category" },
		description: { required: "Description is required" },
		email: { required: "Email is required", email: "Email should be in someone@domain.com" },
		password: { required: "Password is mandatory" },
		phone: {
			required: "Phone number is required",  rangelength: "Phone number must be between 7 - 11 numbers" 
		},
	},
	errorElement: 'span',
	errorPlacement: function (error, element) {
		var placement = $(element).data('error');
		if (placement) {
			$(placement).append(error)
		} else {
			error.insertAfter(element);
		}
	}
});

/* 
 * validation code for the user registration form
 */
$("#registerForm").validate({
	rules: {
		firstName: { required: true ,lettersonly: true},
		lastName: { required: true,lettersonly: true },
		email: { required: true, email: true },
		password: { required: true },
		confirmPassword: { required: true, equalTo: "#fpassword" },
	},
	messages: {
		firstName: { required: "First name is required",lettersonly: "First name can have only letters" },
		lastName: { required: "Last name is required",lettersonly: "last name can have only letters"  },
		email: { required: "Email is required", email: "Email should be in someone@domain.com" },
		password: { required: "Password is mandatory" },
		confirmPassword: { required: "Password confirmation is mandatory", equalTo: "Passwords do not match" },
	},
	errorElement: 'div',
	errorPlacement: function (error, element) {
		var placement = $(element).data('error');
		if (placement) {
			$(placement).append(error)
		} else {
			error.insertAfter(element);
		}
	}
});