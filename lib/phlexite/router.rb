class Phlexite::Router
  def initialize(base, site)
    @base = base
    @site = site
  end

  def group(new_base)
    router = Phlexite::Router.new(File::join(@base, new_base), @site)
    yield router
  end

  def page(out_path, component)
    File::write(full_out_path(out_path), component.call)
  end

private
  def full_out_path(out_path)
    File::join(@site.build_dir, @site.base_url, @base, out_path)
  end
end