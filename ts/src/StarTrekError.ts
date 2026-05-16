
import { Context } from './Context'


class StarTrekError extends Error {

  isStarTrekError = true

  sdk = 'StarTrek'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  StarTrekError
}

