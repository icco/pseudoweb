window.addEvent('domready', function() {
   $$('.collapse').each(function(el, index) {
      var content = el.getElement('div');
      var title = el.getElement('h2');
      var mySlide = new Fx.Reveal(content, {
         duration: 'short',
         tansition: 'linear'
      });

      if (el.hasClass('open'))
         content.show();
      else
         content.hide();

      title.addEvent('click', function(e) {
         e = new Event(e);
         mySlide.toggle();
         e.stop();
      });
   });
});

