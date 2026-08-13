# StarTrek SDK utility: make_context

from startrek_sdk.core.context import StarTrekContext


def make_context_util(ctxmap, basectx):
    return StarTrekContext(ctxmap, basectx)
