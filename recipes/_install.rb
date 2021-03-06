#
# Cookbook Name:: knotx
# Recipe:: install
#
# Copyright 2016 Karol Drazek
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

include_recipe 'knotx::commons'

knotx_instance 'Knotx Main: Install' do
  id 'main'
end

node.default['knotx']['main2']['jmx_port'] = '18093'
node.default['knotx']['main2']['debug_port'] = '28093'
node.default['knotx']['main2']['port'] = '8093'

knotx_instance 'Knotx Main2: Install' do
  id 'main2'
end
