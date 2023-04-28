rem crea package.json
@echo on
rem npm install
rem rmdir /s /q
rem call npm install -g parcel-bundler
rem call npm install --save-dev npm-run-series

parcel origen/index.html
parcel origen/index.html -p 8125  --open --target browsers  --dist-dir destino




call npm install --save-dev parcel 
call npm install --save-dev @parcel/transformer-sass
call npm install --save-dev autoprefixer
call npm install --save-dev npm-run-all

call npm install --save-dev posthtml-include
call npm install --save-dev postcss-preset-env
call npm install --save-dev rimraf
call npm install --save-dev sharp

call npm install --save-dev stylelint stylelint-config-standard
call npm install --save-dev stylelint stylelint-config-standard-scss
call npm install --save-dev stylelint stylelint-config-standard postcss-lit



call npx html-validate --init
rem call npm install --save-dev npm-build-zip no funciona
rem call npm install --save-dev @parcel/compressor-gzip @parcel/compressor-brotli no lo puedo hacer funcionar
rem nuevo 15/03/2023 no funciona compresores 20/03/2023 requiere .parcelrc:
rem call npm i --save-dev posthtml-modules
rem https://posthtml.org/#/packages
echo  on
echo instalado parcel

