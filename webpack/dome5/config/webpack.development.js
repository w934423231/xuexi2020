const path = require('path')
const WebpackHtmlPlugin = require('html-webpack-plugin')
module.exports = {
    mode: 'development',
    output: {
        filename: 'index.js'
    },
    plugins: [
        new WebpackHtmlPlugin({
            template: path.resolve(__dirname, '../index.html')
        })
    ]
}