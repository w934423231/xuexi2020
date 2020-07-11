// const path = require('path')
module.exports = (env, argv) => {
    env = env || {
        development: true
    }
    return {
        entry: './src/js/index.js',
        module: {
            rules: [{
                test: /\.css$/i,
                use: ['style-loader', 'css-loader']
            }, {
                test: /\.(png|jpeg|jpg|gif)$/i,
                use: {
                    loader: 'url-loader',
                    options: {
                        outputPath: 'image',
                        // publicPath: 'duild/image',
                        limit: 4 * 1024
                    }
                }
            }]
        },
        ...env.production ? require('./config/webpck.production') : require('./config/webpack.development')
    }


}