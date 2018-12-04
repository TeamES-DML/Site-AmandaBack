require 'test_helper'

class TopicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topico = topicos(:one)
  end

  test "should get index" do
    get topicos_url
    assert_response :success
  end

  test "should get new" do
    get new_topico_url
    assert_response :success
  end

  test "should create topico" do
    assert_difference('Topico.count') do
      post topicos_url, params: { topico: { corpo: @topico.corpo, titulo: @topico.titulo } }
    end

    assert_redirected_to topico_url(Topico.last)
  end

  test "should show topico" do
    get topico_url(@topico)
    assert_response :success
  end

  test "should get edit" do
    get edit_topico_url(@topico)
    assert_response :success
  end

  test "should update topico" do
    patch topico_url(@topico), params: { topico: { corpo: @topico.corpo, titulo: @topico.titulo } }
    assert_redirected_to topico_url(@topico)
  end

  test "should destroy topico" do
    assert_difference('Topico.count', -1) do
      delete topico_url(@topico)
    end

    assert_redirected_to topicos_url
  end
end
