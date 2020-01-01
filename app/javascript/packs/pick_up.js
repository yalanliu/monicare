import $ from 'jquery'
$(document).ready(() => {
  $('').on('click', () => {
    
  })
})

window.onload = function() {
  let anchor = /(#.*)/;
  document.location.href.match(anchor)[0];
  document.querySelector('#list-pick-up-list').click();
};