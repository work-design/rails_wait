module Wait
  class Admin::WaitTaxonsController < Admin::BaseController
    before_action :set_wait_taxon, only: [:show, :edit, :update, :destroy]

    def index
      @wait_taxons = WaitTaxon.page(params[:page])
    end

    def new
      @wait_taxon = WaitTaxon.new
    end

    def create
      @wait_taxon = WaitTaxon.new(wait_taxon_params)

      unless @wait_taxon.save
        render :new, locals: { model: @wait_taxon }, status: :unprocessable_entity
      end
    end

    def show
    end

    def edit
    end

    def update
      @wait_taxon.assign_attributes(wait_taxon_params)

      unless @wait_taxon.save
        render :edit, locals: { model: @wait_taxon }, status: :unprocessable_entity
      end
    end

    def destroy
      @wait_taxon.destroy
    end

    private
    def set_wait_taxon
      @wait_taxon = WaitTaxon.find(params[:id])
    end

    def wait_taxon_params
      params.fetch(:wait_taxon, {}).permit(
        :name
      )
    end

  end
end
