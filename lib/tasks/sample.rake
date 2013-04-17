namespace :sample do

  desc "Copy jars from .jbundle/classpath.rb into /lib to make  TB CDI working"
  task :copy_jars => :environment do
    p '='*80
    p 'CLASSPATH is loading....'
    p '='*80
    system 'rm ./lib/*.jar'

    JBUNDLER_CLASSPATH.each { |c| 
      system 'cp ' + c + ' ./lib'
      require c
    }
  end
  
end
