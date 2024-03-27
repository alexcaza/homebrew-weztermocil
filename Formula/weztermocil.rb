class Weztermocil < Formula
  desc "Automate opening windows and panes with commands in Wezterm (like Teamocil or iTermocil)."
  homepage "https://github.com/alexcaza/weztermocil"
  url "https://github.com/alexcaza/weztermocil/archive/v0.1.3.tar.gz"
  license "MIT"
  head "https://github.com/alexcaza/weztermocil.git", branch: "main"
  version "0.1.3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    # generate_completions_from_executable(bin/"weztermocil", "--list", base_name: "weztermocil", shell_parameter_format: "complete-")
    # (man1/"rg.1").write Utils.safe_popen_read(bin/"rg", "--generate", "man")
  end
end
