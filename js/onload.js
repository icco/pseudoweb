window.addEvent('domready', function() {
   $$('.collapse').each(function(el, index) {
      var t = el.getElement('div');
      var mySlide = new Fx.Reveal(t, {
         duration: 'short',
         tansition: 'linear'
      });

      if (this.hasClass('open'))
         t.show();
      else
         t.hide();

      el.addEvent('click', function(e) {
         e = new Event(e);
         mySlide.toggle();
         e.stop();
      });
   });
});

