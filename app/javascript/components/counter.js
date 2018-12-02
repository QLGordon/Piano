const textCounter = () => {
  const textarea = document.getElementById('editor');
  const varLenght = textarea.innerHTML.length;

  if (textarea, varLenght) {
    textarea.addEventListener('keyup', (event) => {
    return varLenght;
    });
    const count = textarea.insertAdjacentText('afterend', `${varLenght}`);
  };
};

export { textCounter };
