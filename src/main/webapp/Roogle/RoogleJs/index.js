let slideIndex = 0;

const slides = document.getElementsByClassName('Slider__img');

for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
}

function showNextSlide() {
    slides[slideIndex].style.display = 'none';

    slideIndex++;

    if (slideIndex >= slides.length) {
        slideIndex = 0;
    }

    slides[slideIndex].style.display = 'block';
}

function showPreviousSlide() {
    slides[slideIndex].style.display = 'none';

    slideIndex--;

    if (slideIndex < 0) {
        slideIndex = slides.length - 1;
    }

    slides[slideIndex].style.display = 'block';
}

document.getElementById('nextButton').addEventListener('click', showNextSlide);

document.getElementById('prevButton').addEventListener('click', showPreviousSlide);

slides[slideIndex].style.display = 'block';



//topbtn
let mybutton = document.getElementById("topBtn");

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 450 || document.documentElement.scrollTop > 450) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}