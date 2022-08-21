$(function() {

    function animateThumbs( direction, $item, val, opacity ) {
      var ani = {
        opacity: opacity
      };
      ani[ getMarginProperty() ] = val;

      if ( direction == 'next' ) {
        var x1 = '.t1',
          x2 = '.t2, .t4',
          x3 = '.t3, .t5, .t7',
          x4 = '.t6, .t8',
          x5 = '.t9';
      } else {
        var x1 = '.t9',
          x2 = '.t6, .t8',
          x3 = '.t3, .t5, .t7',
          x4 = '.t2, .t4',
          x5 = '.t1';
      }

      $(x1, $item).delay( _duration * 0    ).animate( ani, _duration );
      $(x2, $item).delay( _duration * 0.25 ).animate( ani, _duration );
      $(x3, $item).delay( _duration * 0.5  ).animate( ani, _duration );
      $(x4, $item).delay( _duration * 0.75 ).animate( ani, _duration );
      $(x5, $item).delay( _duration * 1    ).animate( ani, _duration );
    }
    function getMarginProperty() {
      return ( _orientation == 'horizontal' ) ? 'marginLeft' : 'marginTop';
    }
    function getMargin( direction ) {
      var margin = ( $window[ ( _orientation == 'horizontal' ) ? 'width' : 'height' ]() / 2 ) + 210
      if ( direction == 'next' )
      {
        margin = -margin;
      }
      return margin;
    }

    var $window = $(window),
      $inner = $('#inner'),
      $carousel = $('#carousel');

    var _orientation = 'horizontal',
      _duration = 600,
      _animating = false;

    $inner.show();
    $carousel.carouFredSel({
      width: '100%',
      height: '100%',
      direction: 'left',
      items: 1,
      auto: false,
      scroll: {
        fx: 'none',
        timeoutDuration: 3000,
        conditions: function( direction ) {

          _animating = true;

          if ( $carousel.hasClass( 'prepared' ) )
          {
            $carousel.removeClass( 'prepared' );
            return true;
          }

          $carousel.addClass( 'prepared' );

          animateThumbs( direction, $carousel.children().first(), getMargin( direction ), 0 );

          setTimeout(
            function() {
              $carousel.trigger( direction );
            }, _duration + 800
          );

          return false;
        },
        onBefore: function( data ) {
          var direction = data.scroll.direction;

          var css = {
            opacity: 0
          };
          css[ getMarginProperty() ] = -getMargin( direction );

          $('img', data.items.visible).css( css );
          animateThumbs( direction, data.items.visible, 0, 1 );
        },
        onAfter: function( data ) {
          data.items.old.children().css({
            'marginLeft': 0,
            'marginTop': 0
          });

          setTimeout(
            function() {
              _animating = false;
            }, _duration + 800
          );
        }
      }
    });

    $('#left, #right, #up, #down').click(function() {
      if ( _animating ) {
        return false;
      }

      var direction = this.id,
        scroll = ( direction == 'up' || direction == 'left' ) ? 'next' : 'prev',
        newOrientation = ( direction == 'up' || direction == 'down' ) ? 'vertical' : 'horizontal';
      
      if ( _orientation != newOrientation ) {
        _orientation = newOrientation;
        $inner.toggleClass( 'horizontal' ).toggleClass( 'vertical' );
        $carousel.trigger( 'configuration', [ 'direction', direction ] );
      }
      $carousel.trigger( scroll );
      
      return false;
    });
  });