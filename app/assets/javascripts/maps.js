$('a[data-target="#mappy"]').on('shown.bs.tab', function (e) {
        google.maps.event.trigger(map, 'resize');
      });
      $('a[data-target="#mappy"]').on('hidden.bs.tab', function (e) {
        google.maps.event.trigger(map, 'resize');
      });


$('a[data-target="#mapppy"]').on('shown.bs.tab', function (e) {
        google.maps.event.trigger(map, 'resize');
      });
      $('a[data-target="#mapppy"]').on('hidden.bs.tab', function (e) {
        google.maps.event.trigger(map, 'resize');
      });
