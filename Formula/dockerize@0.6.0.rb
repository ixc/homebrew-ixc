class DockerizeAT060 < Formula
  desc "Utility to simplify running applications in docker containers"
  homepage "https://github.com/jwilder/dockerize"
  url "https://github.com/jwilder/dockerize.git",
      :tag      => "v0.6.0",
      :revision => "f1ec3af610ad5e96d6349984e93e1df0b447dbd5"

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
