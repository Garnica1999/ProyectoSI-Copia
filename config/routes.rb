Rails.application.routes.draw do
  

  namespace :students do
    get 'monitoring/index'
    get 'monitoring/inscribir'
    get 'monitoring/ver'
  end

  namespace :students do
    get 'schedules/index'
    get 'schedules/inscribir'
    get 'schedules/ver'
    get 'schedules/materias_disponibles'
  end
  #GET - SE PUEDE ACCEDER DESDE LAS RUTAS DESDE LA BARRA DE DIRECCIONES
  #POST - EL MAS SEGURO. SOLO SE PUEDE ACCEDER A TRAVES DE LINKS Y ACCIONES DE LA WEB
  get 'inicio/index'
  get 'students/index'
  get 'students/ver'

  #Definicio de recursos 
  resources :students
  resources :schedule
  resources :monitoring
  
  #Se define el renombramiento de los controladores y acciones
  get "inicio", to: "inicio#index"


  #deinifion de la ruta de arranque del servidor web
  root 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
