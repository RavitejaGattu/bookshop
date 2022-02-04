/**
* Implementation for CatalogService defined in ./cat-service.cds
*/
// const cds = require('@sap/cds')
module.exports = function (){
  // Register your event handlers in here, e.g....
  this.after ('READ','Books', each => {
    if (each.stock > 151) {
      each.title += ` Service Method triggered`
    }
  })
}