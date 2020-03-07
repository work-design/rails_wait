require 'test_helper'
class Wait::Admin::WaitTaxonsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @wait_admin_wait_taxon = create wait_admin_wait_taxons
  end

  test 'index ok' do
    get admin_wait_taxons_url
    assert_response :success
  end

  test 'new ok' do
    get new_admin_wait_taxon_url
    assert_response :success
  end

  test 'create ok' do
    assert_difference('WaitTaxon.count') do
      post admin_wait_taxons_url, params: { #{singular_table_name}: { #{attributes_string} } }
    end

    assert_response :success
  end

  test 'show ok' do
    get admin_wait_taxon_url(@wait_admin_wait_taxon)
    assert_response :success
  end

  test 'edit ok' do
    get edit_admin_wait_taxon_url(@wait_admin_wait_taxon)
    assert_response :success
  end

  test 'update ok' do
    patch admin_wait_taxon_url(@wait_admin_wait_taxon), params: { #{singular_table_name}: { #{attributes_string} } }
    assert_response :success
  end

  test 'destroy ok' do
    assert_difference('WaitTaxon.count', -1) do
      delete admin_wait_taxon_url(@wait_admin_wait_taxon)
    end

    assert_response :success
  end

end
