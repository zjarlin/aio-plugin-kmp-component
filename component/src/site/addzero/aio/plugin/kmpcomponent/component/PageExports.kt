package site.addzero.aio.plugin.kmpcomponent.component

import site.addzero.aio.plugin.kmpcomponent.bindings.PageRootFunctions
import site.addzero.aio.plugin.kmpcomponent.contract.KmpComponentContract

internal object PageRootFunctionsExportsImpl : PageRootFunctions.Exports {
    override fun definition(): String = KmpComponentContract.definition()

    override fun handle(request: String): String = KmpComponentContract.handle(request)
}
