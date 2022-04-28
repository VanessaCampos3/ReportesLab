var inputs = document.getElementsByClassName('formulario__input');

for (var i = 0; i <inputs.length; i++) {
inputs[i].addEventListener('keyup', function(){
if(this.value.length>=1) {
this.nextElementSibling.classList.add('fijar');
} else {
this.nextElementSibling.classList.remove('fijar');
}
});
}

function validacion(){
    var lab=document.getElementsByClassName('formulario__label')
    var asig=document.getElementsByClassName('formulario__label')
    var maestro=document.getElementsByClassName('formulario__label')
    var alu=document.getElementsByClassName('formulario__label')
    var bol=document.getElementsByClassName('formulario__label')
    var gru=document.getElementsByClassName('formulario__label')
    var fecha=document.getElementsByClassName('formulario__label')
    var hora=document.getElementsByClassName('formulario__label')
    var eti=document.getElementsByClassName('formulario__label')
    var ser=document.getElementsByClassName('formulario__label')
    var prom=document.getElementsByClassName('formulario__label')


    if(lab.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(asig.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(maestro.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(alu.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(bol.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(gru.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(fecha.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(hora.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(eti.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(ser.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }
    if(prom.value = "")
    {
      alert ("Ingrese el Laboratorio")
      return false;  
    }

}