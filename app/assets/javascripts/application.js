// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tinymce-jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require rails.validations
//= require_tree .



<script type="text/javascript">
function provGuest() {
obj_output_div=document.getElementById('output1');
obj_form=document.forms.Guest;
obj_pole_name =obj_form.name;
obj_pole_email =obj_form.email;
obj_pole_message =obj_form.message;
*
if (obj_pole_name.value==""){
obj_output_div.innerHTML = "Напишите свое имя!"; 
return;
}
txt = obj_pole_email.value;
if (txt==""){
obj_output_div.innerHTML = "Напишите Ваш E-mail!";
return;
}
if ((txt.indexOf("@") == -1) || (txt.indexOf(".") == -1)) {
obj_output_div.innerHTML = "Введите корректный E-mail типа [email]name@mail.ru[/email]"; 
return; 
} 
textMessage=obj_pole_message.value;
if (textMessage==""){ 
obj_output_div.innerHTML = "Напишите сообщение!";
return;
} 
if (textMessage.length<10){
obj_output_div.innerHTML = "Длина сообщения должна быть не менее 10 символов";
return;
}
*
obj_form.submit();
}
</script>