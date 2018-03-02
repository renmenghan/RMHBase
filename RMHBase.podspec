#
# Be sure to run `pod lib lint RMHBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RMHBase'
  s.version          = '0.1.45 '
  s.summary          = 'RMHBase'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"RMHBase component"
                       DESC

  s.homepage         = 'https://gitee.com/rrrmmmhhh/RMHBaseComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'renmenghan' => 'mrren888@163.com' }
  s.source           = { :git => 'https://gitee.com/rrrmmmhhh/RMHBaseComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

    s.public_header_files = 'RMHBase/Classes/*.h'
    s.source_files = 'RMHBase/Classes/*.h'

    s.subspec 'Category' do |c|
    c.dependency 'SDWebImage'
    c.source_files = 'RMHBase/Classes/Category/**/*'
    end

    s.subspec 'BaseModel' do |b|
    b.source_files = 'RMHBase/Classes/BaseModel/**/*'
    b.dependency 'JSONModel'
    end

    s.subspec 'Macro' do |m|
    m.source_files = 'RMHBase/Classes/Macro/**/*'
    end

    s.subspec 'Des' do |d|
    d.source_files = 'RMHBase/Classes/Des/**/*'
    d.dependency 'GTMBase64'
    end


    s.subspec 'SliderView' do |sv|
    sv.source_files = 'RMHBase/Classes/SliderView/**/*'
    end



    s.subspec 'BaseController' do |bs|
    bs.source_files = 'RMHBase/Classes/BaseController/**/*'
#bs.public_header_files = 'RMHBase/Classes/BaseController/**/*.h'
    bs.dependency 'RMHBase/BaseModel'
    bs.dependency 'RMHBase/Macro'
    bs.dependency 'RMHBase/Category'
    bs.dependency 'RMHBase/Des'
    bs.dependency 'MBProgressHUD'
    bs.dependency 'MJRefresh'
    end

    s.subspec 'Network' do |n|
    n.source_files = 'RMHBase/Classes/Network/**/*'
    n.dependency 'AFNetworking'
    n.dependency 'RMHBase/BaseModel'
    n.dependency 'RMHBase/Macro'
    n.dependency 'RMHBase/Category'
    n.dependency 'RMHBase/Des'
    n.dependency 'RMHBase/BaseController'
    end

    s.subspec 'ViewPager' do |vp|
    vp.source_files = 'RMHBase/Classes/ViewPager/**/*'
    vp.dependency 'RMHBase/Category'
    vp.dependency 'RMHBase/BaseController'
    end
  
   s.resource_bundles = {
     'RMHBase' => ['RMHBase/Assets/*.png']
   }

#s.public_header_files = 'RMHBase/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

end
