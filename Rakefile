# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'URUG Motion'

  app.files_dependencies 'app/by_hand_view_controller.rb' => 'app/main_view_controller.rb',
    'app/bubble_wrap_view_controller.rb' => 'app/main_view_controller.rb'

  app.pods do
    pod 'ECSlidingViewController'
    pod 'RaptureXML'
    pod 'SVProgressHUD'
    pod 'NanoStore', '~> 2.1.4'
  end
end
