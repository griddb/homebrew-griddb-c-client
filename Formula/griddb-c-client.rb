class GriddbCClient < Formula
  desc "The GridDB C Client provides a C interface for GridDB"
  homepage "https://github.com/griddb"
  url "https://github.com/griddb/c_client/archive/v4.5.1.tar.gz"
  version "4.5.1"
  sha256 "bf9eaca4df14bd3badc662dc3a6db5cdcae5b35e9e50b48427c9b9dd02bc116e"
  license "Apache-2.0"

  bottle :unneeded

  depends_on "autoconf"
  depends_on "automake"
  depends_on "libtool"
  depends_on "llvm"

  def install
    Dir.chdir('client/c')
    system "./bootstrap.sh"
    system "./configure --prefix=#{prefix}"
    system "make", "install"
  end

  test do
    (testpath/"sample.c").write <<~EOS
      #include "gridstore.h"
      #include <stdio.h>
      int main()
      {
        GSGridStoreFactory* p = gsGetDefaultFactory();
        if (p != NULL) printf("Get default GSGridStoreFactory instance");
        return 0;
      }
    EOS
    system "gcc", "-I#{include}", "-L#{lib}", "sample.c", "-lgridstore", "-o", "sample"
    assert_equal "Get default GSGridStoreFactory instance", `./sample`
  end
end
