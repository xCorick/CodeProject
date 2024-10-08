﻿var container2 = document.getElementById('container2');
var slider2 = document.getElementById('slider2');
var slides2 = document.getElementsByClassName('slide2').length;
var buttons2 = document.getElementsByClassName('btn2');

var currentPosition2 = 0;
var currentMargin2 = 0;
var slidesPerPage2 = 0;
var slidesCount2 = slides2 - slidesPerPage2;
var containerWidth2 = container2.offsetWidth;
var prevKeyActive2 = false;
var nextKeyActive2 = true;

// Escuchar el evento de redimensionamiento de la ventana para ajustar los parámetros del slider
window.addEventListener("resize", checkWidth2);

function checkWidth2() {
    containerWidth2 = container2.offsetWidth;
    setParams2(containerWidth2);
}

// Configurar los parámetros basados en el ancho de la ventana
function setParams2(w) {
    if (w < 551) {
        slidesPerPage2 = 1;
    } else {
        if (w < 901) {
            slidesPerPage2 = 2;
        } else {
            if (w < 1101) {
                slidesPerPage2 = 3;
            } else {
                slidesPerPage2 = 4;
            }
        }
    }
    slidesCount2 = slides2 - slidesPerPage2;
    if (currentPosition2 > slidesCount2) {
        currentPosition2 -= slidesPerPage2;
    };
    currentMargin2 = -currentPosition2 * (100 / slidesPerPage2);
    slider2.style.marginLeft = currentMargin2 + '%';
    if (currentPosition2 > 0) {
        buttons2[0].classList.remove('inactive');
    }
    if (currentPosition2 < slidesCount2) {
        buttons2[1].classList.remove('inactive');
    }
    if (currentPosition2 >= slidesCount2) {
        buttons2[1].classList.add('inactive');
    }
}

// Inicializar los parámetros del slider
setParams2();

function slideRight2() {
    if (currentPosition2 != 0) {
        slider2.style.marginLeft = currentMargin2 + (100 / slidesPerPage2) + '%';
        currentMargin2 += (100 / slidesPerPage2);
        currentPosition2--;
    };
    if (currentPosition2 === 0) {
        buttons2[0].classList.add('inactive');
    }
    if (currentPosition2 < slidesCount2) {
        buttons2[1].classList.remove('inactive');
    }
};

function slideLeft2() {
    if (currentPosition2 != slidesCount2) {
        slider2.style.marginLeft = currentMargin2 - (100 / slidesPerPage2) + '%';
        currentMargin2 -= (100 / slidesPerPage2);
        currentPosition2++;
    };
    if (currentPosition2 == slidesCount2) {
        buttons2[1].classList.add('inactive');
    }
    if (currentPosition2 > 0) {
        buttons2[0].classList.remove('inactive');
    }
};
