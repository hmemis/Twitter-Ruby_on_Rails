require 'test_helper'

class TakipcisControllerTest < ActionController::TestCase
  setup do
    @takipci = takipcis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:takipcis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create takipci" do
    assert_difference('Takipci.count') do
      post :create, takipci: { ad: @takipci.ad, soyad: @takipci.soyad }
    end

    assert_redirected_to takipci_path(assigns(:takipci))
  end

  test "should show takipci" do
    get :show, id: @takipci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @takipci
    assert_response :success
  end

  test "should update takipci" do
    patch :update, id: @takipci, takipci: { ad: @takipci.ad, soyad: @takipci.soyad }
    assert_redirected_to takipci_path(assigns(:takipci))
  end

  test "should destroy takipci" do
    assert_difference('Takipci.count', -1) do
      delete :destroy, id: @takipci
    end

    assert_redirected_to takipcis_path
  end
end
