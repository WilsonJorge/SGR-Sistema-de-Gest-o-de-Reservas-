package projecto.intellica.hotel

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
        "/"(controller: "public", action:'home')
        // Definir a rota para a action 'index' do 'EmailController'
        "/email"(controller: "email", action: "index")
        "/report"(controller: "report", action: "index")
        "/menu"(controller: "menu", action: "pesquisa")


//        "/login/$action?"(controller: "login")
//        "/logout/$action?"(controller: "logout")

        "/public/registarHospedeOnline" {
            controller = "public"
            action = "registarHospedeOnline"
        }
        


//        "/menu"(controller: "menu",action: "home")
    }
}
