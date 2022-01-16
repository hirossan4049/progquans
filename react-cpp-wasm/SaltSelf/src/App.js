import React, { useState } from 'react';
import { useEffect } from 'react';

import Hello from "./wasm/wasm_forweb.js";
import HelloWASM from "./wasm/wasm_forweb.wasm";

function App() {
  const hw = Hello({
    locateFile: () => {
      return HelloWASM;
    },
  })

  useEffect(() => {
    hw.then((core) => {
      console.log("LOADED WASM_FORWEB!?")
      core.ForJsInterface()
      console.log("interface inited")
    })
  }, [])

  return (
    <h1>OMG! Its working!</h1>
  );
}

export default App;
