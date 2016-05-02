module ApplicationHelper
  include Siestag::SiteConfig

  def link_to_institution_site
    Siestag::SiteConfig.institution('url')
    link_to Siestag::SiteConfig.institution('name'), Siestag::SiteConfig.institution('url'), target: '_blank', class: "brand-logo"
  end

  def institution_name_with_link
    Siestag::SiteConfig.institution('url')
    link_to Siestag::SiteConfig.institution('name'), Siestag::SiteConfig.institution('url'), target: '_blank'
  end
end
