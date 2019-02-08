onDOMReady = ->
  $(document).on 'focus', 'input.datepicker:not(.hasDatepicker)', ->
    input = $(@)

    # Only create datepickers in compatible browsers
    return if input[0].type is 'date'

    defaults = dateFormat: 'dd.mm.yy'
    options  = input.data 'datepicker-options'
    input.datepicker $.extend(defaults, options)

$(document).
  ready(onDOMReady).
  on 'page:load turbolinks:load', onDOMReady
