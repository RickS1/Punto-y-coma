Tabulous.setup do

  tabs do

    jok_tab do
      text {''}
      link_path {'/congreso/congreso'}
      visible_when { false }
      enabled_when { true }
      active_when {  in_action('any').of_controller('main') }
    end
    
    main_tab do
      text {'Sobre Punto y Coma'}
      link_path {'/congreso/congreso'}
      visible_when { true }
      enabled_when { true }
      active_when {  in_action('any').of_controller('congreso') }
    end

    ponentes_tab do
      text { 'Ponentes' }
      link_path { '/ponente/ponente' }
      visible_when { true }
      enabled_when { true }
      active_when { in_action('any').of_controller('ponente') }
    end

    agenda_tab do
      text { 'Agenda' }
      link_path { '/agenda/agenda' }
      visible_when { true }
      enabled_when { true }
      active_when { in_action('any').of_controller('agenda') }
    end

    registro_tab do
      text { 'Registrarse' }
      link_path { '/registro/registro' }
      visible_when { !current_user.present? }
      enabled_when { true }
      active_when { in_action('any').of_controller('registro') }
    end

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    renderer :bootstrap_navbar

    # whether to allow the active tab to be clicked
    # defaults to true
    active_tab_clickable false

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end


end
