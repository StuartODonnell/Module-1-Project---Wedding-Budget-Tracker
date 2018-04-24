require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative("../models/item.rb")
require_relative("../models/vendor.rb")


# the index
get "/items" do
  @items = Item.all()
  erb(:index)
end
#
# # new
# get "/students/new" do
#   erb(:new)
# end
# #
# # # show - i.e. an individual order
# get "/students/:id" do
#   @students = Student.find(params[:id] )
#   erb(:show)
# end
#
# # create
# post "/students" do
#   student = Student.new(params)
#   student.save()
#   redirect to "/students"
# end
# #
# # # edit
# get "/students/:id/edit" do
# @students = Student.find(params[:id])
# erb(:edit)
# end
#
# # update
# post "/students/:id/edit" do
# updated_student= Student.new(params)
# updated_student.update
# redirect to "students/#{updated_student.id}"
# end
# #
# # # destroy
# # post "/students/:id/delete" do
# #   student = Student.find(params[:id] )
# #   student.delete()
# #   redirect to "/students"
# # end
