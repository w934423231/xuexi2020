const path = require('path')
const WebpackHtmlPlugin = require('html-webpack-plugin')

module.exports = {

    mode: 'production',
    output: {
        path: path.resolve(__dirname, '../build'),
        filename: 'index.js'
    },
    plugins: [
        new WebpackHtmlPlugin({
            template: path.resolve(__dirname, '../index.html')
        })
    ]
}