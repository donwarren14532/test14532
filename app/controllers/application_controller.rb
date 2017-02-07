 
  require 'rake'
  Rake::Task.clear
  Showcase::Application.load_tasks
  
  class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :log_visitor
 
  
  private
  def log_visitor
	Rake::Task['db:migrate'].invoke
	@ip = Socket.ip_address_list
	@ip2 =  request.env["HTTP_X_FORWARDED_FOR"]
	@local_ip = @ip[1].inspect.gsub("#<Addrinfo: ", "").gsub(">", "")
	Login.create(ip: @local_ip, visited_at: Time.now)
  end
end
