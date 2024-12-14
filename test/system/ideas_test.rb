require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
  setup do
    @idea = ideas(:one)
  end

  test "visiting the index" do
    visit ideas_url
    assert_selector "h1", text: "Ideas"
  end

  test "投稿を作成する" do
    visit ideas_url
    click_on "新規投稿"

    fill_in "説明", with: @idea.description
    fill_in "名前", with: @idea.name
    fill_in "写真", with: @idea.picture
    click_on "投稿を作成"

    assert_text "正常に投稿されました"
    click_on "戻る"
  end

  test "投稿を修正する" do
    visit idea_url(@idea)
    click_on "この投稿を修正する", match: :first

    fill_in "説明", with: @idea.description
    fill_in "名前", with: @idea.name
    fill_in "写真", with: @idea.picture
    click_on "投稿の修正"

    assert_text "正常に投稿されました"
    click_on "戻る"
  end

  test "should destroy Idea" do
    visit idea_url(@idea)
    click_on "Destroy this idea", match: :first

    assert_text "Idea was successfully destroyed"
  end
end
