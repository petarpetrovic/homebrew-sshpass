class Sshpass < Formula
	homepage "https://sourceforge.net/projects/sshpass/"
	url "https://downloads.sourceforge.net/project/sshpass/sshpass/1.10/sshpass-1.10.tar.gz"
	sha256 "ad1106c203cbb56185ca3bad8c6ccafca3b4064696194da879f81c8d7bdfeeda"
	
	def install
		system "./configure",	"--disable-debug",
								"--disable-dependency-tracking",
								"--disable-silent-rules",
								"--prefix=#{prefix}"
		system "make", "install"
	end
	
	test do
		system "sshpass"
	end
end