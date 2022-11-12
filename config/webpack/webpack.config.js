const path = require("path")
const webpack = require("webpack")

// Extracts CSS into .css file
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
// Removes exported JavaScript files from CSS-only entries
// in this example, entry.custom will create a corresponding empty custom.js file
const RemoveEmptyScriptsPlugin = require('webpack-remove-empty-scripts');

module.exports = {
    mode: "production",
    devtool: "source-map",
    entry: {
        application: [
            "./app/javascript/application.js",
            './app/javascript/stylesheets/application.scss',
        ],
    },
    output: {
        filename: "[name].js",
        sourceMapFilename: "[file].map",
        path: path.resolve(__dirname, "..", "..", "app/assets/builds"),
    },
    module: {
        rules: [
            // Add CSS/SASS/SCSS rule with loaders
            {
                test: /\.(?:sa|sc|c)ss$/i,
                use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
            },
        ],
    },
    resolve: {
        // Add additional file types
        extensions: ['.js', '.jsx', '.scss', '.css'],
    },
    plugins: [
        new webpack.optimize.LimitChunkCountPlugin({
            maxChunks: 1
        }),
        // Include plugins
        new RemoveEmptyScriptsPlugin(),
        new MiniCssExtractPlugin(),
    ]
}
