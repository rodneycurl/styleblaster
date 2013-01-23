PhotoboothGallery::Application.routes.draw do
  post   '/bgz'           => "backgrounds#create"
  get    '/bgz/admin'     => "backgrounds#admin"
  delete '/bgz/:id'       => "backgrounds#create"
  post   '/bgz/:id/pick'  => "backgrounds#pick"
  get    '/bgz/current'   => "backgrounds#current"
  get    '/bgz'           => "backgrounds#index"

  get    '/r/new/'        => "region#new"
  delete '/r/:name'       => "region#destroy"
  get    '/r/:name/edit'  => "region#edit"
  put    '/r/:name'       => "region#update"
  post   '/r/'            => "region#create"
  get    '/r/'            => "region#index"

  get    '/:region/gallery/:id'   => "photo#gallery"
  get    '/:region/gallery'       => "photo#gallery"
  get    '/:region/popular'       => "photo#popular"
  get    '/:region/latest'        => "photo#latest"
  get    '/:region/top'           => "photo#top"
  get    '/:region/random'        => "photo#random"
  delete '/:region/p/:id'         => "photo#destroy"
  post   '/:region/p/:id/like'    => "photo#like"
  get    '/:region/p/:id'         => "photo#show"
  get    '/:region/refresh'       => "photo#index"
  get    '/:region'               => "photo#index"

  get    '/gallery/:id'   => "photo#gallery"
  get    '/gallery'       => "photo#gallery"
  get    '/popular'       => "photo#popular"
  get    '/latest'        => "photo#latest"
  get    '/top'           => "photo#top"
  get    '/random'        => "photo#random"
  post   '/upload/:name'  => "photo#create"
  delete '/p/:id'         => "photo#destroy"
  post   '/p/:id/like'    => "photo#like"
  get    '/p/:id'         => "photo#show"
  get    '/refresh'       => "photo#index"
  root :to                => "photo#index"
end
