// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Controller pour masquer la page du formulaire et faire apparaitre un faux chargement
// import LoaderController from "./loader_controller"
// application.register("loader", LoaderController)
