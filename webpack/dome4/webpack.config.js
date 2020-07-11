const path = require('path')

module.exports = {
    mode: 'development',
    entry: './src/js/index.js',
    output: {
        path: path.resolve(__dirname, 'build'),
        filename: 'index.js'
    },
    module: {
        rules: [{
            test: /\.(css)$/i,
            use: ["style-loader", 'css-loader']
        }, {
            test: /\.(jpg|jpeg|png|gif)$/i,
            use: {
                loader: 'url-loader',
                options: {
                    outputPath: 'image',
                    publicPath: '/image',
                    limit: 4 * 1024
                }
            }
        }]
    }
}