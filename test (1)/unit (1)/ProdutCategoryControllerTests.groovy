

import org.junit.*
import grails.test.mixin.*

@TestFor(ProdutCategoryController)
@Mock(ProdutCategory)
class ProdutCategoryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/produtCategory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.produtCategoryInstanceList.size() == 0
        assert model.produtCategoryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.produtCategoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.produtCategoryInstance != null
        assert view == '/produtCategory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/produtCategory/show/1'
        assert controller.flash.message != null
        assert ProdutCategory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/produtCategory/list'

        populateValidParams(params)
        def produtCategory = new ProdutCategory(params)

        assert produtCategory.save() != null

        params.id = produtCategory.id

        def model = controller.show()

        assert model.produtCategoryInstance == produtCategory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/produtCategory/list'

        populateValidParams(params)
        def produtCategory = new ProdutCategory(params)

        assert produtCategory.save() != null

        params.id = produtCategory.id

        def model = controller.edit()

        assert model.produtCategoryInstance == produtCategory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/produtCategory/list'

        response.reset()

        populateValidParams(params)
        def produtCategory = new ProdutCategory(params)

        assert produtCategory.save() != null

        // test invalid parameters in update
        params.id = produtCategory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/produtCategory/edit"
        assert model.produtCategoryInstance != null

        produtCategory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/produtCategory/show/$produtCategory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        produtCategory.clearErrors()

        populateValidParams(params)
        params.id = produtCategory.id
        params.version = -1
        controller.update()

        assert view == "/produtCategory/edit"
        assert model.produtCategoryInstance != null
        assert model.produtCategoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/produtCategory/list'

        response.reset()

        populateValidParams(params)
        def produtCategory = new ProdutCategory(params)

        assert produtCategory.save() != null
        assert ProdutCategory.count() == 1

        params.id = produtCategory.id

        controller.delete()

        assert ProdutCategory.count() == 0
        assert ProdutCategory.get(produtCategory.id) == null
        assert response.redirectedUrl == '/produtCategory/list'
    }
}
