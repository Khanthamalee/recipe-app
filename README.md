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

* core
    * config
        * assets
            * app_images.dart
        * theme
            * app_colors.dart
            * app_theme.dart
            
* data
    * datasources   #APIs, Local DB
    * models        #Data, models
    * repositories  #Inplementation of repositories

* domian
    * entities      #Business logic models
    * repositories  #Abstract repositories
    * usecases      #Use case

* presentation
    * bloc          #State management (e.g. , Bloc)
    * pages         #UI(flutter Widget)

