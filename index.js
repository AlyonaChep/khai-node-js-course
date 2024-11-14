const express = require('express')
const productRoutes = require('./product.routes');

const app = express();
const PORT = 3000;

app.use(productRoutes);

app.listen(PORT, () => {
	console.log(`Server listening at http://localhost:${PORT}`);
});