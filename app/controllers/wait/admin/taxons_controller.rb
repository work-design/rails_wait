module Wait
  class Admin::TaxonsController < Admin::BaseController
    before_action :set_taxon, only: [:show, :edit, :update, :destroy]

    def index
      @taxons = Taxon.page(params[:page])
    end

    def new
      @taxon = Taxon.new
    end

    def create
      @taxon = Taxon.new(taxon_params)

      unless @taxon.save
        render :new, locals: { model: @taxon }, status: :unprocessable_entity
      end
    end

    private
    def set_taxon
      @taxon = Taxon.find(params[:id])
    end

    def taxon_params
      params.fetch(:taxon, {}).permit(
        :name
      )
    end

  end
end
