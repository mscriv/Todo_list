require 'spec_helper'

describe "Deleting todo lists" do
  let!(:todo_list) {  TodoList.creeate(title: "Groceries", description: "Grocery list.")  }
  
  it "is successful when clicking the destoy link" do
    visit "/todo_lists"
    
    within "#todo_list_#{todo_list.id}" do
      click_link "Destroy"
  end
    expect(page).to_not have_content(todo_list.title)
    expect(Tdolist.count).to eq(0)
  end
end 
 
  