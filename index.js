const express = require("express");
const fetch = require("node-fetch");

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", async (req, res) => {
    const { texto, a } = req.query;
    let resultado;
    resultado = await traducir(texto, a);
    res.send(resultado);
});

app.listen(PORT);

async function traducir(texto, a) {

    var url = `http://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=${a}&dt=t&q=${texto}`;

    var result = await fetch(url);
    const json = await result.json();
    let resultado = "";

    for (let t of json[0]) {
        resultado += t[0] + " ";
    }

    return resultado;
}
