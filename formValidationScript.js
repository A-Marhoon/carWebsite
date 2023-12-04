const checkbox1 = document.getElementById("checkbox1") //Initalize pointers to the document elements to be 
const checkbox2 = document.getElementById("checkbox2") // easily accessible in variables
const checkbox3 = document.getElementById("checkbox3")
const checkbox4 = document.getElementById("checkbox4")
const textArea1 = document.getElementById("textArea1")
const radiobtn6 = document.getElementById("radioBtn6")
const radiobtn7 = document.getElementById("radioBtn7")
const radiobtn8 = document.getElementById("radioBtn8")
const radiobtn9 = document.getElementById("radioBtn9")
const radiobtn10 = document.getElementById("radioBtn10")
const textArea2 = document.getElementById("textArea2")
const form = document.getElementById('form2')
const errorElement = document.getElementById("error1")
const errorElement2 = document.getElementById("error2")
const errorElement3 = document.getElementById("error3")
const errorElement4 = document.getElementById("error4")

function getWordCount(str) {
     return str.split(' ')
       .filter(function(n) { return n != '' })
       .length;
}

form.addEventListener('submit', (e) => {
	let errors = []
	
	if ( (checkbox1.checked || checkbox2.checked || checkbox3.checked || checkbox4.checked) && !(checkbox1.checked && checkbox2.checked && checkbox3.checked && checkbox4.checked) ) {
	errorElement.style.display='none'	
	}else{
	errors.push("error1")
    errorElement.style.display='block'	
	}
	
	if (getWordCount(textArea1.value) < 10 || getWordCount(textArea1.value) > 200){
	errors.push("error2")
    errorElement2.style.display='block'
	}else{
	errorElement2.style.display='none'
	}
	
	if (radiobtn6.checked || radiobtn7.checked || radiobtn8.checked || radiobtn9.checked || radiobtn10.checked) {
	errorElement3.style.display='none'
	}else{
	errorElement3.style.display='none'
	errors.push("error3")
	errorElement3.style.display='block'
	}
	
		
	if (radiobtn10.checked){
    	if (getWordCount(textArea2.value) > 12 || getWordCount(textArea2.value) < 1){
		errors.push("error4")
		errorElement4.style.display='block'
		}else{
		errorElement4.style.display='none'	
		}
	
	}
		

	if (errors.length > 0) {
	e.preventDefault()
	
	}
})
