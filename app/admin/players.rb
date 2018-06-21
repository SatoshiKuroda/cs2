ActiveAdmin.register Player do
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
#indexページ
  # index do
  #   @players = Player.new
  #   @player.pictures.build
  #   selectable_column
  #   id_column
  #   column @players do |b|
  #     image_tag(b.pictures.url)
  #   end
  #   column :post_id
  #   column :created_at
  #   column :updated_at
  #   actions
  # end
 


  # form do |f|
  #   f.inputs '選手データの編集' do
  #     f.input :name
  #     f.input :number
  #     f.input :tall
  #     f.input :weight
  #     f.input :position

  #     f.has_many :pictures, allow_destroy: true,
  #                new_record: true do |t|
  #       t.input :image
  #     end
  #     f.actions
  #   end
  # end
 
  # permit_params :name, :number, :tall, :weight, :position, picture_attributes: [:id, :image, :player_id, :picture]

end
