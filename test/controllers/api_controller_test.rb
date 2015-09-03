require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  setup do
    create_list(:product, 25)
    @catalog = create(:catalog)
    @products = create_list(:product, 25, catalog: @catalog)
  end

  test "should get list_catalog" do
    get :list_catalog, format: :json
    assert_response :success
    assert assigns(:catalogs), [@catalog]
  end

  test "should get list_product by catalog_id" do
    get :list_product, catalog_id: @catalog.id, format: :json
    assert_response :success
    assert assigns(:products), @products
  end

end
