# Ebook-App
* clean architecture flutter
* font-end from https://www.youtube.com/watch?v=NPI_Z1KiKdI&t=13165s
* commit git from https://www.youtube.com/watch?v=HrBUDpSekbY&t=409s
* back-end from Golang clean architecture 

---

# Structure
* common
    * helper
        * navigation
            * app_navigation.dart
        * message
            * display_message.dart

* core
    * config
        * assets
            * app_images.dart
        * theme
            * app_colors.dart
            * app_theme.dart
    * constants
        * api_url.dart
    * usecase
        * usecase.dart
    * network
        * dio_client.dart
        * interceptors.dart
            
* data
    * auth
        * sources       #APIs, Local DB
            * autn_api_service.dart
        * models        #Data, models
            * signin_model.dart
            * signup_req_params.dart
        * repositories  #Inplementation of repositories
            * auth.dart

* domian
    * entities      #Business logic models
        
    * repositories  #Abstract repositories
        * auth.dart
    * usecases      #Use case
        * signin.dart
        * signup.dart

* presentation
    * auth
        * bloc          #State management (e.g. , Bloc)
        * pages         #UI(flutter Widget)
            * signin_page.dart
            * signup_page.dart
    * home
        * bloc
        * pages
            * home_page.dart
    * splash
        * bloc
            * splash_cubit.dart
            * splash_state.dart
        * pages
            * splash.dart
* main.dart
* service_locator.dart

