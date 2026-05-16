# StarTrek SDK utility: make_context

from core.context import StarTrekContext


def make_context_util(ctxmap, basectx):
    return StarTrekContext(ctxmap, basectx)
