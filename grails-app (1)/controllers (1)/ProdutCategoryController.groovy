import org.springframework.dao.DataIntegrityViolationException

class ProdutCategoryController extends BaseController {
//    def beforeInterceptor=[action: this.&auth, except:"login"];
//    def auth(){
//        if(!session.user){
//            redirect(action: "login",controller: "login");
//        }
//
//
//    }
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [produtCategoryInstanceList: ProdutCategory.list(params), produtCategoryInstanceTotal: ProdutCategory.count()]
    }

    def create() {
        [produtCategoryInstance: new ProdutCategory(params)]
    }

    def save() {
        def produtCategoryInstance = new ProdutCategory(params)
        if (!produtCategoryInstance.save(flush: true)) {
            render(view: "create", model: [produtCategoryInstance: produtCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), produtCategoryInstance.id])
        redirect(action: "show", id: produtCategoryInstance.id)
    }

    def show(Long id) {
        def produtCategoryInstance = ProdutCategory.get(id)
        if (!produtCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "list")
            return
        }

        [produtCategoryInstance: produtCategoryInstance]
    }

    def edit(Long id) {
        def produtCategoryInstance = ProdutCategory.get(id)
        if (!produtCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "list")
            return
        }

        [produtCategoryInstance: produtCategoryInstance]
    }

    def update(Long id, Long version) {
        def produtCategoryInstance = ProdutCategory.get(id)
        if (!produtCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (produtCategoryInstance.version > version) {
                produtCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'produtCategory.label', default: 'ProdutCategory')] as Object[],
                          "Another user has updated this ProdutCategory while you were editing")
                render(view: "edit", model: [produtCategoryInstance: produtCategoryInstance])
                return
            }
        }

        produtCategoryInstance.properties = params

        if (!produtCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [produtCategoryInstance: produtCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), produtCategoryInstance.id])
        redirect(action: "show", id: produtCategoryInstance.id)
    }

    def delete(Long id) {
        def produtCategoryInstance = ProdutCategory.get(id)
        if (!produtCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            produtCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'produtCategory.label', default: 'ProdutCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
