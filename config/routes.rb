Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"

  get "tasks/new", to: "tasks#new"

  get "tasks/:id", to: "tasks#show", as: :task

  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit 

  patch "tasks/:id", to: "tasks#update"

  patch "tasks/:id/complete", to: "tasks#complete", as: :tasks_complete

  delete "tasks/:id", to: "tasks#destroy", as: :tasks_delete

end

# As a user, I can list tasks - DONE
# As a user, I can view the details of a task - DONE
# As a user, I can add a new task - DONE
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task