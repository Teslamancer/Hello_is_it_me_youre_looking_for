require 'test_helper'

class AuthentificationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Authentification.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Authentification.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Authentification.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to authentification_url(assigns(:authentification))
  end

  def test_edit
    get :edit, :id => Authentification.first
    assert_template 'edit'
  end

  def test_update_invalid
    Authentification.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Authentification.first
    assert_template 'edit'
  end

  def test_update_valid
    Authentification.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Authentification.first
    assert_redirected_to authentification_url(assigns(:authentification))
  end

  def test_destroy
    authentification = Authentification.first
    delete :destroy, :id => authentification
    assert_redirected_to authentifications_url
    assert !Authentification.exists?(authentification.id)
  end
end
