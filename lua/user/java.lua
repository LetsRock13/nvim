require('java').setup()
require('lspconfig').jdtls.setup({
  settings = {
    java = {
      configuration = {
        runtimes = {
          name = "JavaSE-21",
          path = os.getenv("JAVA_HOME"),
          default = true,
        } 
      }
    }
  }
})
