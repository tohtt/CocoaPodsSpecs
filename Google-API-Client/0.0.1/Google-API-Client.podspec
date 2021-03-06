Pod::Spec.new do |s|
  s.name     = 'Google-API-Client'
  s.version  = '0.0.1'
  s.license      = {
    :type => 'Apache 2.0',
    :text => <<-LICENSE
                Copyright (c) 2011 Google Inc.

                Licensed under the Apache License, Version 2.0 (the "License");
                you may not use this file except in compliance with the License.
                You may obtain a copy of the License at

                    http://www.apache.org/licenses/LICENSE-2.0

                Unless required by applicable law or agreed to in writing, software
                distributed under the License is distributed on an "AS IS" BASIS,
                WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                See the License for the specific language governing permissions and
                limitations under the License.
    LICENSE
  }

  s.summary  = "Written by Google, this library is a flexible and efficient Objective-C framework for accessing JSON APIs."
  s.homepage = 'http://code.google.com/p/google-api-objectivec-client/'
  s.author   = { 'Google, Inc.' => 'http://code.google.com/p/google-api-objectivec-client/' }
  s.source   = { :svn => 'https://google-api-objectivec-client.googlecode.com/svn/trunk/' }
  s.resource = 'Source/OAuth2/Touch/GTMOAuth2ViewTouch.xib' 
  s.frameworks = 'Security', 'SystemConfiguration'
  s.platform = :ios, '5.0'

  s.source_files =  'Source/*.{h,m}', 'Source/HTTPFetcher/*.{h,m}', 'Source/Networking',
                    'Source/OAuth2/*.{h,m}', 'Source/OAuth2/Touch', 'Source/Objects', 'Source/Utilities'

  s.subspec 'Drive' do |drive|
    drive.source_files = FileList['Source/Services/Drive/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'AdSense' do |ads|
    ads.source_files = FileList['Source/Services/AdSense/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'Analytics' do |analytics|
    analytics.source_files = FileList['Source/Services/Analytics/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'Calendar' do |calendar|
    calendar.source_files = FileList['Source/Services/Calendar/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'Plus' do |plus|
    plus.source_files = FileList['Source/Services/Plus/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'YouTube' do |youtube|
    youtube.source_files = FileList['Source/Services/YouTube/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end

  s.subspec 'All' do |all|
    all.source_files = FileList['Source/Services/**/*.{h,m}'].exclude(/\_Sources.m$/)
  end
  
end
