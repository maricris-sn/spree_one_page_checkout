Deface::Override.new :virtual_path => 'spree/shared/_login',
                     :name => 'add_extra_param_to_login_form',
                     :insert_before => "#password-credentials",
                     :text => "<input type='hidden' name='checkout' value='<%= @order.present? %>'>"

Deface::Override.new :virtual_path => 'spree/shared/_login',
                     :name => 'add_store_id_to_login_form',
                     :insert_before => "#password-credentials",
                     :text => "<input type='hidden' name='active_store_id' value='<%= current_store[:id] %>'>"
