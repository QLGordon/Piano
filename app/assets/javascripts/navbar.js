const nav = document.getElementById('nav');
window.addEventListener('scroll', (event) => {
  position = window.scrollY;
  if (position > 200) {
    nav.style.transform = 'translate(0px,-100px)';}
  else if (position < 200) {
    nav.style.transform = 'translate(0px,0px)';
  };
});
