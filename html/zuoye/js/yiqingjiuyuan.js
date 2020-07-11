var Objli = document.getElementsByTagName('li');

for (let i = 0; i < Objli.length; i++) {
    Objli[i].onmouseover = function() {
        Objli[i].getElementsByTagName('div')[0].style.background = 'rgb(0,0,0)'
        Objli[i].getElementsByTagName('div')[0].style.opacity = '0.8'
    }
    Objli[i].onmouseleave = function() {
        Objli[i].getElementsByTagName('div')[0].style.background = 'rgb(0,0,0)'
        Objli[i].getElementsByTagName('div')[0].style.opacity = '0'
    }
}