class DrugsController < ApplicationController
  def index
    @drugs = Drug.all
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.new(drug_params)

    if @drug.save
      redirect_to drugs_path
    else
      render :new
    end
  end

  def show
    @drug = Drug.find(params[:id])
  end

  def edit
    @drug = Drug.find(params[:id])
  end

  def update
    @drug = Drug.find(params[:id])

    if @drug.update(drug_params)
      redirect_to drugs_path, notice: "衛教單修改成功"
    else
      render :edit
    end
  end

  def destroy
    @drug = Drug.find(params[:id])
    @drug.destroy
    redirect_to drugs_path, alert: "衛教單已刪除"
  end

  private

  def drug_params
    params.require(:drug).permit( :generic_name,
                                  :how_to_use,
                                  :why_i_take_this_drug,
                                  :pregnancy_warning,
                                  :breastfeeding_warning,
                                  :side_effect)

  end
end
