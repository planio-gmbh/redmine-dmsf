# Redmine plugin for Document Management System "Features"
#
# Copyright (C) 2011   Vít Jonáš <vit.jonas@gmail.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

ActionController::Routing::Routes.draw do |map|
  map.resources :dmsf, :collection => {
                         :edit_root => :get,
                         :entries_operation => :post,
                         :entries_email => :post,
                         :delete_entries => :post,
                         :delete => :post,
                         :save_root => :post,
                         :save => :post,
                         :notify_activate => :post,
                         :notify_deactivate => :post
                       }
  map.resources :dmsf_files, :member => {
                               :create_revision => :post,
                               :delete_revision => :post,
                               :lock => :post,
                               :unlock => :post,
                               :notify_activate => :post,
                               :notify_deactivate => :post,
                               :delete => :post
                             }
  map.connect 'dmsf_upload/:action/:id', :controller => 'dmsf_upload'
  map.connect 'dmsf_state/:action/:id', :controller => 'dmsf_state'
  map.connect 'dmsf_files_copy/:action/:id', :controller => 'dmsf_files_copy'
  map.connect 'dmsf_folders_copy/:action/:id', :controller => 'dmsf_folders_copy'
end
