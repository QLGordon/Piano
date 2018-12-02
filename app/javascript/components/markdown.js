let markdown = require( "markdown" ).markdown;

const initMarkdown = () => {
  const textarea = document.getElementById('editor');
  const preview = document.getElementById('preview');
  if (textarea, preview) {
    textarea.addEventListener('keyup', (event) => {
      const html = markdown.toHTML(textarea.value);
      preview.innerHTML = html;
    });
  };
}
const markdownShow = () => {
  const markdownText = document.getElementById('markdown-text');
  console.log(markdownText.innerHTML);
  if (markdownText) {
    const html = markdown.toHTML(markdownText.innerHTML);
    markdownText.innerHTML = html;
  };
};


export { initMarkdown };
export { markdownShow };
