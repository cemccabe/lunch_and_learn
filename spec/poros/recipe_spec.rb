require 'rails_helper'

RSpec.describe Recipe do
  it 'exists with attributes' do
    data = {
      label: "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)", 
      url: 'https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html', 
      image: 'https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIP%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJGMEQCIA76PlrnT4Z6Jjx7CPsnAMk8%2BQODxpYGvlPP7PIrsFXmAiAI6rC1j%2FWSUtwwTUFrCv%2FGmEWbQqnjmPLOitkYOB5Cbiq4BQg7EAAaDDE4NzAxNzE1MDk4NiIMORv%2FY2k6hFOtkYbyKpUFmahVoUUMNvvlCc0K%2BLu0Arw0u%2FOGjjzZX6nSrOljnyetH4tSxSWzPc%2BWaxg4MZUCNnB6i6YxcdYDvE8UUGcmw7VSWio6m6PxYWd9SGVjo8V5zn0DBn3sgV9KIf11pFEiRrygbmyKGDCEuVs%2B%2BN3fQ%2BQl4xmOsBEvVQ4HRvzFLVSwP4y1cdPGQ%2FaIEbQEEY9VZomHxar7pV7vO8fSlsGj0P2oXtAG3Zpuo2aKWCriGs1dqLj3TQEKhX8dFewlBLiqg%2F7bIjtLxRHg17XfWFzj602xDoeW6nvu5dPbzDLJt2wdGKx5RLpMdXVEeurZ8MT%2FZ%2FhJuwA352OIsEziwMR4KtGsl9mgYEwrcNPuuZ6wkp5E8VBDngEGddvcC03NWOZLA%2FU3atAvej39cT6c0WkDZpQjJ2FrIKTotzR0jASa%2FBvGpI8m%2FPTk93h0BOBnvKzs51hZkoORKz%2BgFD6O0is7PjjOUWEqE%2BBW5O44wUWmRwALMfh77mZN%2FR%2BkrrTP8uh0AvwF8oHJHrD9x7FOyLBa%2BmSXcs0B4FJVjySg2AFCohTZOqqoJYqp1l8Qp0ss6sELi9MlZLFyQlpw6akvYeqFxSAPewli%2Fz2va531UMqGwhWwf5SKjTrFP4mKC0iAYPKoO14kh1X3arQ8q93sy7kTVuvak39U2eYj4Hs58hReSK452yrWzVTm8qx68X27FiN9ZuIH%2Flzr5s0oP1saCesd%2BuVqyc1S1f%2FQAyp1qyo3QgZF%2FoeT3nfRVpiysNOOZzhj6BTRg9eYmLwVV2o2U2F8GOTNGrMQnHnvadkkE6fxS6EuSQdKA%2Bgs0qvdasLKfsVvCF%2FG7x8BP8wuLPJ3mgU%2BsPQEll4NsQ1W2pq9NWyl%2Bn3iCuHIJDDj3J%2BgBjqyAWfA9vRk7lvxduf08C77ubfAg9hkZDdauLdtZ%2Fr6ncQRRq9wmEJZpgshCbpo46U1ziRoQwPp88S92feMXqt3paj%2FKKpWiLrXDi9ty481kAZtxJpKh96Ym4a9EzRCXSsjK9KZkr1yj7To2SnpaDoP%2FN38IFT2GpZfozSARkrriH%2B0R22cNxInyhJ64%2B4IgD6vtuKDdqepHHPPMe4s24R6ybQrlGaQ7CqcNtgm4dV7HcA5ufM%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230308T024706Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFP6RXFXD6%2F20230308%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=ec59e1fed9902465ceeee4e8b0f764af9c997745a92fc36c91503cb71838eef0'
  }
  
    recipe = Recipe.new(data, 'Thailand')

    expect(recipe).to be_a(Recipe)
    expect(recipe.id).to eq(nil)
    expect(recipe.title).to eq(data[:label])
    expect(recipe.url).to eq(data[:url])
    expect(recipe.image).to eq(data[:image])
    expect(recipe.country).to eq('Thailand')
  end
end