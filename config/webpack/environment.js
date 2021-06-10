const { environment } = require('@rails/webpacker')

//jquery設定のために記述
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
);

module.exports = environment
