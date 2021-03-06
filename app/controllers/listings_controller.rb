class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:update, :basics, :description, :address, :price, :photos, :calender, :bankaccount, :publish]

  def index
    @listings = current_user.listings
  end

  def show
  end

  def new
    # 現在のユーザのリスティングの新規作成
    @listing = current_user.listings.build
  end

  def create
    # パラメータと共に現在のユーザのリスティングを作成
    @listing = current_user.listings.build(listing_params)

    # パラメーターとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      # saveが成功したら編集画面にリダイレクト
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存しました"
    else
      # saveが失敗したら新規作成画面にリダイレクト
      redirect_to new_listing_path, notice: "リスティングの作成・保存に失敗しました"
    end
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to :back, notice: "料金を更新しました"
    end
  end

  def basics
  end

  def description
  end

  def address
  end

  def price
  end

  def photos
    @photo = Photo.new
  end

  def calender
  end

  def bankaccount
  end

  def publish
  end

  private
  def listing_params
    params.require(:listing).permit(:home_type, :pet_type, :breeding_years, :pet_size, :price_pernight)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
