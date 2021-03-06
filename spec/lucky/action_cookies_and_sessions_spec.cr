require "../../spec_helper"

include ContextHelper

class Cookies::Index < Lucky::Action
  get "/cookies" do
    cookies["my_cookie"] = "cookie"
    session["my_session"] = "session"
    text "#{cookies["my_cookie"]} - #{session["my_session"]}"
  end
end

describe Lucky::Action do
  describe "routing" do
    it "can set and read cookies" do
      response = Cookies::Index.new(build_context, params).call

      response.context.cookies["my_cookie"].should eq "cookie"
      response.context.session["my_session"].should eq "session"
      response.body.should eq "cookie - session"
    end
  end
end
