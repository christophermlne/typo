Given(/^the following articles exist$/) do |table|
  # table is a Cucumber::Ast::Table
  # pending # express the regexp above with the code you wish you had
 
  @data = table.hashes
  @data.each do |article|
	@article = Article.new(:title => article['Title'], :author => article['Author'], :body => article['Body'])
    @article.save!
  end 
end
