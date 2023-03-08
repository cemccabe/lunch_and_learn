require 'rails_helper'

RSpec.describe Image do
  it 'exists with attributes' do
    data = {
      "id": "yJ2SHIpNb9M",
      "created_at": "2018-10-27T03:32:26Z",
      "updated_at": "2023-03-08T01:05:00Z",
      "width": 3888,
      "height": 2184,
      "color": "#f3d9c0",
      "blur_hash": "LnGSx=%KaKoJ~pxZodoL#Qaet7j[",
      "description": "The picture taken in Laos, 06:00, from hot baloon",
      "alt_description": "time lapse photography of flying hot air balloon",
      "urls": {
          "raw": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3",
          "full": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80",
          "regular": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=1080",
          "small": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=400",
          "thumb": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3&q=80&w=200",
          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1540611025311-01df3cef54b5"
        } 
    }

    image = Image.new(data)

    expect(image).to be_an(Image)
    expect(image.alt_tag).to eq('time lapse photography of flying hot air balloon')
    expect(image.url).to eq('https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=Mnw0MTk3Nzh8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3ODI1NzQ0Mw&ixlib=rb-4.0.3')
  end
end