#
# Cookbook Name:: demo
# Recipe:: umbraco
#
# Copyright 2014, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['umbraco']['dist'] = "http://s3.amazonaws.com/vmworld/umbraco-vmworld2014.zip"

include_recipe 'umbraco'

directory win_friendly_path(node['umbraco']['app_root']) do
  rights [:read,:modify], 'IIS_IUSRS', :applies_to_children => true
end

firewall_rule_name = "Umbraco #{node['umbraco']['port']}"

execute "open-static-port" do
  command "netsh advfirewall firewall add rule name=\"#{firewall_rule_name}\" dir=in action=allow protocol=TCP localport=#{node['umraco']['port']}"
  returns [0,1,42] # *sigh* cmd.exe return codes are wonky
  not_if { Demo::Helper.firewall_rule_enabled?(firewall_rule_name) }
end
