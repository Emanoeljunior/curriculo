
module.exports = {
  devServer: {
    proxy: {
        '/api': {
            target: 'https://curriculo-emanoel.uc.r.appspot.com/graphql',
            changeOrigin: true,
            secure: false,
            pathRewrite: {
                '^/api': ''
            },
            onProxyReq: function (request) {
                request.setHeader("origin", "https://curriculo-emanoel.uc.r.appspot.com/");
            }
        }
    }
}
  }