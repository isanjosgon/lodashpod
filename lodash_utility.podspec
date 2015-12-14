Pod::Spec.new do |s|
s.name             =  "lodash_utility"
s.version          =  "1.0.0"
s.summary          =  "Utility framework which provides productivity to the developer without losing performance"

s.description      =  <<-DESC
Lodash is a utility framework which provides productivity to the developer without losing performance. It is inspired by Javascript module https://github.com/lodash/lodash.
DESC

s.homepage         =  "https://github.com/isanjosgon/lodashpod.git"
s.license          =  'MIT'
s.author           =  { "Isra San Jose Gonzalez" => "isanjosgon@gmail.com" }
s.source           =  { :git => "https://github.com/isanjosgon/lodashpod.git", :tag => s.version.to_s }
s.social_media_url =  'https://twitter.com/isanjosgon'

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'
s.resource_bundles = {
'async' => ['Pod/Assets/*.png']
}
end