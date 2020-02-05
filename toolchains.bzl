def _my_toolchain_impl(ctx):
    fail()

my_toolchain_impl = rule(
    implementation = _my_toolchain_impl
)

def _my_rule_impl(ctx):
    fail()

my_rule = rule(
    implementation = _my_rule_impl,
    toolchains = ["//:my_type"],
)
