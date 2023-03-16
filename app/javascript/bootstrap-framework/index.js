import * as bootstrap from 'bootstrap';
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;

document.addEventListener('DOMContentLoaded', () => {
  //===== START dashboard popular searches
  let popularSearchList = $('#popular-searches-list');
  let popularSearchInput = $('.input-popular-search');
  popularSearchInput.on('click focusin', function(e) {
    e.preventDefault();
    popularSearchList.removeClass('d-none');
    popularSearchList.addClass('d-black');
    popularSearchList.show();
  });

  //TODO: on search input focus out side hide list
  /*popularSearchInput.focusout(function (e){
    e.preventDefault();
    popularSearchList.removeClass('d-black');
    popularSearchList.addClass('d-none');
    popularSearchList.hide();
  });*/

  let searchListItem = $('.popular-searches-list-item');
  searchListItem.click(function (e) {
    $('#input-popular-search').val($(this).text());
  });
  // TODO: style list items with background and active color
  /*$('.popular-searches-list-item').click(function(){
    $('#popular-searches-list >li').css('background-color', 'blue');
    $('.popular-searches-list-item').css('color', '#f3f3f3');
    $(this).css('background-color', '#ffcb06');
    let toShow = this.id.substr(5);
    $('div.page:visible').fadeOut(600, function(){
      $('#' + toShow).fadeIn(600);
    });
  });*/
 //========== END dashboard popular searches


  // display email already taken modal box on registration
  let emailExistsModalEle =  document.getElementById('emailExistsModal');
  if (typeof(emailExistsModalEle) != 'undefined' && emailExistsModalEle != null)  {
    const emailEle = document.getElementById('user_email');
    let invalidFeedbackEle = emailEle.nextElementSibling;
    if (typeof(invalidFeedbackEle) != 'undefined' && invalidFeedbackEle != null)  {
      if(invalidFeedbackEle.innerHTML === 'Email has already been taken'){
        let modalEmailExists = new bootstrap.Modal(document.getElementById('emailExistsModal'), {});
        modalEmailExists.show();
      }
    }
  }

  // initialize tooltips
  const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
  const tooltipList = [...tooltipTriggerList].map((tooltipTriggerEl) => {
    const tooltip = new bootstrap.Tooltip(tooltipTriggerEl);

    return tooltip;
  });

  // intialize tabs
  const tabTriggerList = document.querySelectorAll('[data-bs-toggle="tab"]');
  const tabList = [...tabTriggerList].forEach((tabTriggerEl) => {
    tabTriggerEl.addEventListener('shown.bs.tab', (e) => {
      e.target.classList.add('active');
      e.target.setAttribute('aria-selected', true);

      if (e.relatedTarget) {
        e.relatedTarget.classList.remove('active');
        e.relatedTarget.setAttribute('aria-selected', false);
      }
    });
  });
});
