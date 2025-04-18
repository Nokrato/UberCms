var ajaxWidgets, ajaxPopulateWidgets, quickPressLoad;

jQuery(document).ready( function($) {
	// These widgets are sometimes populated via ajax
	ajaxWidgets = [
		'dasThinkoard_incoming_links',
		'dasThinkoard_primary',
		'dasThinkoard_secondary',
		'dasThinkoard_plugins'
	];

	ajaxPopulateWidgets = function(el) {
		show = function(id, i) {
			var p, e = $('#' + id + ' div.inside:visible').find('.widget-loading');
			if ( e.length ) {
				p = e.parent();
				setTimeout( function(){
					p.load('index-extra.php?jax=' + id, '', function() {
						p.hide().slideDown('normal', function(){
							$(this).css('display', '');
							if ( 'dasThinkoard_plugins' == id && $.isFunction(tb_init) )
								tb_init('#dasThinkoard_plugins a.thickbox');
						});
					});
				}, i * 500 );
			}
		}
		if ( el ) {
			el = el.toString();
			if ( $.inArray(el, ajaxWidgets) != -1 )
				show(el, 0);
		} else {
			$.each( ajaxWidgets, function(i) {
				show(this, i);
			});
		}
	};
	ajaxPopulateWidgets();

	postboxes.add_postbox_toggles('dasThinkoard', { pbshow: ajaxPopulateWidgets } );

	/* QuickPress */
	quickPressLoad = function() {
		var act = $('#quickpost-action'), t;
		t = $('#quick-press').submit( function() {
			$('#dasThinkoard_quick_press h3').append( '<img src="images/wpspin_light.gif" style="margin: 0 6px 0 0; vertical-align: middle" />' );
			$('#quick-press .submit input[type="submit"], #quick-press .submit input[type="reset"]').attr('disabled','disabled');

			if ( 'post' == act.val() ) {
				act.val( 'post-quickpress-publish' );
			}

			$('#dasThinkoard_quick_press div.inside').load( t.attr( 'action' ), t.serializeArray(), function() {
				$('#dasThinkoard_quick_press h3 img').remove();
				$('#quick-press .submit input[type="submit"], #quick-press .submit input[type="reset"]').attr('disabled','');
				$('#dasThinkoard_quick_press ul').find('li').each( function() {
					$('#dasThinkoard_recent_drafts ul').prepend( this );
				} ).end().remove();
				tb_init('a.thickbox');
				quickPressLoad();
			} );
			return false;
		} );

		$('#publish').click( function() { act.val( 'post-quickpress-publish' ); } );

	};
	quickPressLoad();

} );
