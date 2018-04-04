ActiveAdmin.register Book do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :author, :publisher, :date, :image, :rating, :genre_id, book_genres:[:id, :book_id, :genre_id, :_destroy]

# form do |f|
#   f.semantic_errors *f.object.errors.keys
#   f.inputs "Book" do
#     f.input :name
#     f.input :author
#     f.input :publisher
#     f.input :date
#     f.input :image
#     f.input :genre_id
#
#   end
#   f.actions
# end
end
