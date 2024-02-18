class HomeGrid < BaseGrid
    scope do
        Child.includes(:user, :task_lists, :gifts, :finances)
       .joins(:user)
       .joins(:task_lists)
       .joins(:gifts)
       .joins(:finances)
    end
  
    ## Filters
  
    # filter(:well, :string) do |value|
    #   where("wells.name ilike ?", "%#{value}%") 
    # end
  
    # filter(:pad_name, :string) do |value|
    #   where("pads.name ilike ?", "%#{value}%")
    # end
    
    # filter(:res_dev_contact, :string) do |value|
    #   where("pads.res_dev_contact ilike ?", "%#{value}%")
    # end
  
    # filter(:well_package_name, :string) do |value|
    #   where("well_packages.name ilike ?", "%#{value}%")
    # end
  
    # filter(:stage, :enum, select: -> { [ ['None selected', ''], *WellPackage.distinct.pluck(:stage).sort ] }, prompt: 'Select Stage') do |value|
    #   if value.present?
    #     where("well_packages.stage = ?", value)
    #   else
    #     all
    #   end
    # end
  
    # filter(:company_asset_name, :enum, select: -> { [ ['None selected', ''], *CompanyAsset.distinct.pluck(:name).sort ] }, prompt: 'Select Company Asset') do |value|
    #   if value.present?
    #     where("company_assets.name = ?", value)
    #   else
    #     all
    #   end
    # end
  
    ## Columns
  
    # view well details
    column(:id, :header => "Child", :html => true)
    
    column(:username)
    

    # column(:slot_size)
  
    # column(:liner_size)
  
    # column("Pad", :html => true,
    # order: "pads.name", 
    # order_desc: "pads.name DESC"
    # ) do |model|
    #   link_to model.pad.name, pad_path(model.pad) if model.pad
    # end
  
    # column("Res Dev Contact", :header => "Res Dev Contact", :html => true,
    # order: "pad.res_dev_contact", 
    # order_desc: "pad.res_dev_contact DESC"
    # ) do |model|
    #   model.pad.res_dev_contact if model.pad.res_dev_contact
    # end
  
    # column("Well Package", :html => true, :header => "Well Package",
    # order: "well_packages.name", 
    # order_desc: "well_packages.name DESC"
    # ) do |model|
    #   link_to model.pad.well_package.name, well_package_path(model.pad.well_package) if model.pad && model.pad.well_package
    # end
  
    # column("Stage", :html => true, :header => "Stage", :order => true) do |model|
    #   model.pad.well_package.stage if model.pad && model.pad.well_package
    # end
  
    # column("Company Asset", :html => true, :header => "Asset", :order => true) do |model|
    #   link_to model.pad.well_package.company_asset.name, company_asset_path(model.pad.well_package.company_asset) if model.pad && model.pad.well_package && model.pad.well_package.company_asset
    # end
  end