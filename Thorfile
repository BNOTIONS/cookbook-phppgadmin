# encoding: utf-8

require 'bundler'
require 'bundler/setup'
require 'berkshelf/thor'

class Packer < Thor

  desc 'validate', 'Validate all packer templates'
  def validate
    unless system 'berks install --path packer/cookbooks'
      fail 'berks install failed!'
    end

    Dir.chdir './packer' do
      Dir.glob('*.json').each do |template|
        puts "Validating #{template}"
        unless system "packer validate #{template}"
          fail 'Template validation failed!'
        end
      end
    end
  end

  desc "build TEMPLATE", "build packer template (without .json)"
  def build(template)
    system 'berks install --path packer/cookbooks'

    Dir.chdir './packer' do
      unless system "packer build #{template}.json"
        fail 'packer build failed!'
      end

      case template
      when 'docker'
        system 'docker import - phppgadmin < docker.tar'
        system 'docker build -rm -t="bnotions/phppgadmin" ../'
      end
    end
  end
end
