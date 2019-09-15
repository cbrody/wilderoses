function frmValidate() {
  //declarations
  var x;
  var y;
  var strErrors;
  var strURL;

  //the HTML DIV where the errors will show up.
  document.getElementById('subscribebox_errors').innerHTML = "";

  var y = validateEmail(document.getElementById('email').value);

  //if it's not a valid email.
  if (!y) {
    //build the error text/html string
    strErrors = 'Error: ';

    if (!y) {
      strErrors = strErrors + 'Please input a valid e-mail address';
    }

    strErrors = strErrors + '.';

    //write the error HTML to the appropriate error area.
    document.getElementById("subscribebox_errors").innerHTML = " " + strErrors;
  }

  if (y) {
    //its all good!  Begin the AJAX post procedure.
    ajaxSendSubscribeInfo();
  } else {
    //if you get here, something went really wrong.
    alert(strErrors);
  }

}

function ajaxSendSubscribeInfo() {
  //declarations
  var urlStr;
  var urlParams;
  var returnResponse;
  var sForm;
  var xmlhttp;


  //standard AJAX object creation
  if (window.XMLHttpRequest) {
    xmlhttp = new XMLHttpRequest();
  }

  //place your PHPList URL here.  IMPORTANT! Be sure to add ?p=subscribe and the &id= if you are using these functions.

  urlStr = 'https://mail.cbrody.org/?p=subscribe&id=4';

  //declare your AJAX form
  sForm = document.forms["subscribeform"];

  //prepping POST post string.  Should probably use a proper URL encoding.  Haven't got there yet.
  urlParams = '&email=' + escape(sForm.elements["email"].value);

  //iterate through all the checkboxes.  IMPORTANT side note regarding PHPLIST.  The list names in your form must be in this format.
  // list[1]=signup list[2]=signup etc.  Be sure to use the word "signup" (all lower case, no spaces) as the value for each list, or
  // phplist won't recognize it.

  for (var i = 0; i < sForm.elements.length; i++) {
    if ((sForm.elements[i].type == "hidden")) {
      urlParams = urlParams + '&' + escape(sForm.elements[i].name) + '=' + escape(sForm.elements[i].value);
    }
  }

  //must add the subscribe variable to the POST parameters.
  urlParams = urlParams + '&subscribe=hitme';

  //Start POSTING via AJAX.
  xmlhttp.open("POST", urlStr);

  //Send the proper header information along with the request
  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  xmlhttp.onreadystatechange = function() {
    if ((xmlhttp.readyState == 4) && (xmlhttp.status == 200)) { // only if "OK"
      var returnResponse = String(xmlhttp.responseText);
      document.getElementById('subscribebox').innerHTML = "Thank you for subscribing. Please check your email for information about confirming your subscription.";
    } 
    else {
      document.getElementById('subscribebox').innerHTML = "An Error has occured while submitting your request. Please contact admin@cbrody.com";
    }
  }

  xmlhttp.send(urlParams);
}

function validateEmail(elementValue) {
  var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  return emailPattern.test(elementValue);
}
