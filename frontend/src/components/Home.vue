<template>
    <div id="home">
      Home
      <vue-plotly :data="data" :layout="layout" :options="options"/>
    </div>
</template>

<script>
import VuePlotly from '@statnett/vue-plotly'

function getData () {
  var arr = []
  for (let i = 0; i < 10; i++) {
    arr.push(Array(10).fill().map(() => Math.random()))
  }
  console.log('dataasdasd: ', arr)
  return arr
}
var data = getData()

export default {
  components: {
    VuePlotly
  },
  data: function () {
    return {
      data: [{
        z: data,
        type: 'surface'
      }],
      layout: {},
      options: {}
    }
  }
}

// export default {
//   name: 'Home',
//   data () {
//     var Plotly = require('plotly.js')

//     Plotly.plot("home", [{ x: [0, 1], y: [0, 1] }])

//     // var data = this.getData()
//     // Plotly.newPlot('chart', [{ //multiple traces
//     //   z: data,
//     //   type: 'surface'
//     // }]);
//   },
//   getData () {
//     var arr = []
//     for (let i = 0; i < 10; i++) {
//       arr.push(Array(10).fill().map(() => Math.random()))
//     }
//     return arr
//   }
// }

</script>

<style scoped>
#home {

}
</style>
