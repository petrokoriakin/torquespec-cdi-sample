require 'spec_helper'
require 'open-uri'

# A remote group nested within a local one
describe "end-to-end testing" do 

  # Deploy our apps
  app = <<-END.gsub(/^ {4}/,'')
    application:
      root: "/home/pyotr/Work/calavista/samples/try"
  END

  deploy(app)

  remote_describe "in-container tests" do
    require 'torquebox-core'
    include TorqueBox::Injectors

    # Runs remotely (in-container)
    it "should be running remotely" do

      sorter = fetch_cdi(com.softserve.sample.Sorter)
      sorter.should_not be_nil
    end
  end

end
