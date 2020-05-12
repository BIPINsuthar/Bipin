function validation() {
        var fname = document.getElementById("fname").value;
        var lname = document.getElementById("lname").value;
        var pass = document.getElementById("pass").value;
        var cpass = document.getElementById("cpass").value;
        var phone = document.getElementById("phone").value;
        var email = document.getElementById("email").value;
        var dob = document.getElementById("dob").value;


        var regx = /^[6-9]\d{9}$/;
        var regx1 = /^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,8})(.[a-z]{2,8})?$/
        if (fname.trim() == "") {
            alert("blank value not allowed!:first name ");
            return false;
        }
        if (lname.trim() == "") {
            alert(" blank value not allowed!:last name");
            return false;
        }
        if (pass.trim() == "" || cpass.trim() == "") {
            alert("blank value not allowed!:password");
            return false;
        }
        if (pass.trim() != cpass.trim()) {
            alert("password shoult be same!");
            return false;
        }
        if(pass.trim().length<8)
        	{
        	  alert("password must be 8 character!");
        	}
        if (!regx.test(phone.trim())) {
            alert("phone value not valid!");
            return false;
        }
        if (!regx1.test(email.trim())) {
            alert("email value not valid!");
            return false;
        }
        if (dob.trim() == "") {
            alert("blank value not allowed!:DOB");
            return false;
        }
        if (address.trim() == "") {
            alert("blnak vlaue not allowed!:address");
            return false;
        }
        else {
            return true;
        }
    }