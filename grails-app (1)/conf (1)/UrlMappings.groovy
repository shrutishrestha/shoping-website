class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(action: "home",controller:"customer")
		"500"(view:'/error')
	}
}
