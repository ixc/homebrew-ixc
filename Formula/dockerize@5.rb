class DockerizeAT5 < Formula
  desc "Utility to simplify running applications in docker containers"
  homepage "https://github.com/jwilder/dockerize"
  url "https://github.com/jwilder/dockerize.git",
      :tag      => "v0.5.0",
      :revision => "0ea82f3f26bb1f5629e16dccd66e46508f861b5f"

  keg_only :versioned_formula

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/jwilder/dockerize").install buildpath.children
    ENV.append_path "PATH", buildpath/"bin"
    cd "src/github.com/jwilder/dockerize" do
      system "make", "dist"
      bin.install "dist/darwin/amd64/dockerize"
    end
  end

  test do
    system "dist/darwin/amd64/dockerize", "--help"
  end
end
