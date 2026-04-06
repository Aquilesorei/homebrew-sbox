  class Sbox < Formula
    desc "Policy-driven sandboxed command runner"
    homepage "https://github.com/Aquilesorei/sboxd"
    version "0.1.9"

    on_macos do
      on_arm do
        url "https://github.com/Aquilesorei/sboxd/releases/download/v#{version}/sbox-macos-aarch64"
        sha256 "d046adf3f8e958d7d0da9e4d297ffe4db45e8d6244ce71ee798a3b6a89ad25d8"
      end
      on_intel do
        url "https://github.com/Aquilesorei/sboxd/releases/download/v#{version}/sbox-macos-x86_64"
        sha256 "02f6903df161d95ee1f18dae980e071a02dca5f9b9e7b608f89872ad8a4d28a7"
      end
    end

    def install
      bin.install Dir["sbox-macos-*"].first => "sbox"
    end

    test do
      system "#{bin}/sbox", "--version"
    end
  end

