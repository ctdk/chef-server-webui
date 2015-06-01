# chef-server-webui

*NOTE: This software is deprecated for Chef, but since the release of goiardi
1.0.0 keeps getting pushed back for various reasons (like more urgent bugs and
features, real life, work, that kind of thing), and the new chef management
console won't work with goiardi until it hits 1.0.0 with org and RBAC support,
the old chef webui is being forked for goiardi to support those folks who want
or need a web interface for goiardi until that time.*

* Documentation: http://docs.chef.io/
* Goiardi Documentation: http://goiardi.readthedocs.org/
* Tickets/Issues: https://github.com/ctdk/goiardi/issues
* IRC: [#chef](irc://irc.freenode.net/chef) and [#chef-hacking](irc://irc.freenode.net/chef-hacking) on Freenode
* Mailing list: http://lists.opscode.com

## Overview ##

The `chef-server-webui` is a simple Rails 3.2 application which talks to the 
Chef Server API (aka Erchef) for all back-end data. Installation is not as easy 
as it is with erchef, because goiardi does not use omnibus packaging. 
Simplifying the webui install is an ongoing project.  The `chef-server-webui` 
can also be deployed under any [Rack](http://rack.github.com/) compliant server.

The following default configuration values can be overriden in your Rails 
config in `config/initializers/webui_server_init.rb`:

```ruby
ChefServerWebui::Application.config.chef_server_url = "http://127.0.0.1:4545"
ChefServerWebui::Application.config.rest_client_name = "chef-webui"
ChefServerWebui::Application.config.rest_client_key = "/etc/goiardi/chef-webui.pem"
ChefServerWebui::Application.config.admin_user_name =  "admin"
ChefServerWebui::Application.config.admin_default_password = "p@ssw0rd1"
ChefServerWebui::Application.config.rest_client_custom_http_headers = {}
ChefServerWebui::Application.config.title_string = "Goiardi Server"
```

*NOTE:* goiardi does not create a password for the admin user when goiardi is
first started. (This is a feature.) If you want to use webui with goiardi, first
you will have to set a password for the admin user with knife, then try and log
in.

## Contributing/Development

Before working on the code, if you plan to contribute your changes, you need to
read the
[Opscode Contributing document](http://wiki.opscode.com/display/chef/How+to+Contribute).

You will also need to set up the repository with the appropriate branches. We
document the process on the
[Working with Git](http://wiki.opscode.com/display/chef/Working+with+git) page
of the Chef wiki.

## Reporting Bugs ##

You can search for known issues in
[goiardi's Github issues page](https://github.com/ctdk/goiardi/issues). You
should label webui related bugs with the "webui" label.

## License ##

|                      |                                          |
|:---------------------|:-----------------------------------------|
| **Copyright:**       | Copyright (c) 2011-2012 Opscode, Inc.
| **License:**         | Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
