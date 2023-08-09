Rails.application.routes.draw do
  get 'levels/primary_button'
  get 'levels/other_buttons'
  get 'levels/add_bootstrap'
  get 'levels/utility_classes'
  get 'levels/card'
  get 'levels/toast'
  get 'levels/modal'
  get 'levels/navbar'
  get 'levels/grid'
  get 'levels/dynamic_list_group'

  get 'instructions/primary_button'
  get 'instructions/other_buttons'
  get 'instructions/add_bootstrap'
  get 'instructions/utility_classes'
  get 'instructions/frequently_used_components'
  get 'instructions/grid'
  get 'instructions/dynamic_list_group'

  get 'targets/utility_classes'
  get 'targets/card'
  get 'targets/toast'
  get 'targets/modal'
  get 'targets/navbar'
  get 'targets/grid'
  get 'targets/dynamic_list_group'
  
  # Shortcut for get("/", { :controller => "solutions", :action => "instructions" })
  root 'instructions#toc'
end
