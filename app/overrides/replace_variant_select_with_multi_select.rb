Deface::Override.new(virtual_path: "spree/admin/images/_form",
                     name:"replace_variant_select_with_multi_select",
                     replace: "erb[loud]:contains('f.select :viewable_id')",
                     text: "<%= f.hidden_field :viewable_id, value: 1 %>
							<%= f.select :viewable_ids, options_for_select(@variants, @image.variant_ids), {}, {multiple: true, :class => 'select2 fullwidth'} %>",
                     :disabled => false)

