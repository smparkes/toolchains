def _my_toolchain_impl(ctx):
    return [platform_common.ToolchainInfo(name = ctx.attr.name), platform_common.TemplateVariableInfo({})]

my_toolchain_impl = rule(
    implementation = _my_toolchain_impl
)

def _my_rule_impl(ctx):
    print([ctx.attr.name, ctx.toolchains["//:my_type"]])

my_rule = rule(
    implementation = _my_rule_impl,
    toolchains = ["//:my_type"],
)

def register():
    native.register_toolchains(":my_first_toolchain")
    native.register_toolchains(":my_second_toolchain")
