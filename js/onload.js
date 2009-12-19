window.addEvent('domready', function() {
   $$('.collapse').each(function(el, index) {
      console.log(el);
      var content = el.getElement('div');
      var title = el.getElement('h1');
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

