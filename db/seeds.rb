
product_a = Product.create(artist_id: 1, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
image_path = Rails.root.join('spec/support/images/canva_image.jpeg')
product_a.image.attach(io: image_path.open, filename: 'canva_image.jpeg')

product_b = Product.create(artist_id: 2, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
product_b.image.attach(io: image_path.open, filename: 'canva_image.jpeg')

product_c = Product.create(artist_id: 3, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
product_c.image.attach(io: image_path.open, filename: 'canva_image.jpeg')

product_d = Product.create(artist_id: 1, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
product_d.image.attach(io: image_path.open, filename: 'canva_image.jpeg')

product_e = Product.create(artist_id: 2, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
product_e.image.attach(io: image_path.open, filename: 'canva_image.jpeg')

product_f = Product.create(artist_id: 3, sku: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, edition:'sem moldura', price: 10000)
product_f.image.attach(io: image_path.open, filename: 'canva_image.jpeg')