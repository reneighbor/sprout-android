include_recipe 'homebrew'

package 'android-sdk'

licenses = "android-sdk-license-c81a61d9|android-googletv-license-345b386f|android-sdk-preview-license-d099d938|google-gdk-license-35dc2951|intel-android-extra-license-3626590a|mips-android-sysimage-license-acdab23e"

execute 'update-sdk-system-tools-and-images' do
  command 'echo y | android update sdk -a --no-ui --accept=#{licenses}'
  user node['sprout']['user']
end

# filters = %w(
#   platform-tools
#   android-23
#   addon-google_apis-google-19
#   extra-android-m2repository
# )

# execute 'update-sdk-system-tools-and-platforms' do
#   command "echo y | android update sdk --no-ui --filter #{filters.join(',')}"
# end

# atom_system_image_package_id = node['sprout']['android']['atom_system_image_package_id']

# execute 'update-sdk-system-images' do
#   command "echo y | android update sdk -a --no-ui --filter #{atom_system_image_package_id}"
#   user node['sprout']['user']
# end
