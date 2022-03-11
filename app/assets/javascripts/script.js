$( function() {
  $('.js-header-menu').click( function() {
    $('.js-nav').addClass('is-open');
    $('.js-main').bind('click', function() {
      $('.js-nav').removeClass('is-open');
      $('.js-main').unbind('click');
    });
  });

  if ( $('#calendar').length ) {
    $('#calendar').fullCalendar({
      events: '/events.json',
      //defaultView: 'listMonth'
    });
  }

  $('.js-filter-button').click( function() {
    $('.js-filters').addClass('is-open');
  });

  $('.js-filters-close').click( function() {
    $('.js-filters').removeClass('is-open');
  });

});
