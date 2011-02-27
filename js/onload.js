window.addEvent('domready', function() {
   // Deal with collapsable elements on front page
   $$('.collapse').each(function(el, index) {
      var content = el.getElement('div');
      var title = el.getElement('h2');
      var mySlide = new Fx.Reveal(content, {
         duration: 'short',
         tansition: 'linear'
      });

      if (el.hasClass('open')) {
         el.getElement('.handle').set('text', '-');
         content.show();
      } else {
         el.getElement('.handle').set('text', '+');
         content.hide();
      }

      title.addEvent('click', function(e) {
         e = new Event(e);
         mySlide.toggle();
         h = el.getElement('.handle');

         if (h.get('text') == '+')
            h.set('text', '-');
         else
            h.set('text', '+');

         e.stop();
      });
   });
});

