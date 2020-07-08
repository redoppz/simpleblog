class FormController < ApplicationController
	def new
		@article = Article.new
	end
end
