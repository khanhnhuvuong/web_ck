function showPass() {
    var x = document.getElementById("pass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showComPass() {
    var x = document.getElementById("comPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showInput() {
    var checkBox = document.getElementById("squaredcheck4");
    if (checkBox.checked == true) {
        document.getElementById('contact-input-diff').style.display = "block";
    } else {
        document.getElementById('contact-input-diff').style.display = "none";
    }
}

function togglecheckboxes(cn) {
    var cbarray = document.getElementsByName(cn);
    var checkBox = document.getElementById("squaredcheck4");
    for (var i = 0; i < cbarray.length; i++) {
        if (cbarray[i].checked === true) {
            cbarray[i].checked = false;
        }
        if (checkBox.checked == true) {
            cbarray[i].disabled = true;
        } else {
            cbarray[i].disabled = false;
        }

    }
}


let changeIcon = function(icon) {
    icon.classList.toggle('fa-solid')
}