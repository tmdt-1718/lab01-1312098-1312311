crumb :root do
  link "Home", root_path
end

crumb :about do
  link "About", about_path
end

crumb :Albums do 
  link "Albums", albums_path
end

crumb :Album do |album|
  link album.name, album_path(album)
  parent :Albums
end

crumb :Album_new do |album|
  link 'New', new_album_path
  parent :Albums
end

crumb :Album_edit do |album|
  link 'Edit', edit_album_path
  parent :Albums
end



crumb :articles do 
  link "Articles", articles_path
end

crumb :article do |article|
  link article.title, article_path(article)
  parent :articles
end

crumb :article_new do |article|
  link 'New', new_article_path
  parent :articles
end

crumb :edit_article do |article|
  link 'Edit', article
  parent :article, article
end

crumb :users do 
  link "Users", users_path
end

crumb :user do |user|
  link user.username, user_path(user)
  parent :users
end

crumb :login do |user|
  link 'Login', login_path
end

crumb :signup do |user|
  link 'Signup', signup_path
end

crumb :edit_user do |user|
  link 'Edit', user
  parent :user, user
end

crumb :categories do |category|
  link 'Categories', categories_path
end

crumb :category do |category|
  link category.name, category_path(category)
  parent :categories
end

crumb :edit_category do |category|
  link 'Edit',  category
  parent :category, category
end

crumb :new_category do |category|
  link "New", new_category_path
  parent :categories
end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).