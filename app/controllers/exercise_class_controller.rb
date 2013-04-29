
get "exercise_class/index"

resources :users do
	resources :exercise_classes
end