ActiveAdmin.register Reve do

  batch_action :reject do |selection|
    Reve.where(id: selection).update_all(accepted: false)
    redirect_to collection_path
  end

  batch_action :accept do |selection|
    Reve.where(id: selection).update_all(accepted: true)
    redirect_to collection_path
  end

  permit_params do
    [:author, :citation, :accepted]
  end
end
