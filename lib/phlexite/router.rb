require 'fileutils'

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
    out = full_out_path(out_path)
    FileUtils::mkdir_p File::dirname(out)
    File::write(out, component.call)
  end

  def mount(local_directory, on:)
    out = full_out_path(on)
    FileUtils::mkdir_p out
    FileUtils::cp_r File::join(local_directory, "."), out
  end

private

  def full_out_path(out_path)
    File::join(@site.build_dir, @site.base_url, @base, out_path)
  end
end
