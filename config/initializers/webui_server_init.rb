ChefServerWebui::Application.config.chef_server_url = "http://127.0.0.1:4545"
ChefServerWebui::Application.config.rest_client_name = "chef-webui"
ChefServerWebui::Application.config.rest_client_key = "/etc/goiardi/chef-webui.pem"
ChefServerWebui::Application.config.admin_user_name =  "admin"
ChefServerWebui::Application.config.admin_default_password = "p@ssw0rd1"
ChefServerWebui::Application.config.rest_client_custom_http_headers = {}
ChefServerWebui::Application.config.title_string = "Goiardi Server"
