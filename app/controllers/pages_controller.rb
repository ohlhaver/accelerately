class PagesController < ApplicationController
caches_action :home
caches_action :de



	def home
	end

	def de
	end

	def set_locale
		session[:locale] = params[:locale]
		I18n.locale = session[:locale]
		redirect_to ( request.referer || root_path ).gsub(/locale=\w+(\&|$)/, '')
	end	
end
