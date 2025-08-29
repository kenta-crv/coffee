module ApplicationHelper
  def default_meta_tags
    {
      site: "",
      title:"<%= yield(:title) | 『オフィスコーヒー』' %>",
      description: "オフィスで手軽にコーヒーマシン設置なら『オフィスコーヒー』。",
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ]
    }
  end

end
