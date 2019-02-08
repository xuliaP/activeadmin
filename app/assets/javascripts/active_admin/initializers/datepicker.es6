(($) => {

  $(document)
    .on('focus', 'input.datepicker:not(.hasDatepicker)', function() {
      const input = $(this);

      // Only create datepickers in compatible browsers
      if (input[0].type === 'date') { return; }

      const defaults = { dateFormat: 'dd.mm.yy' };
      const options  = input.data('datepicker-options');

      input.datepicker($.extend(defaults, options));
    });

})(jQuery);
