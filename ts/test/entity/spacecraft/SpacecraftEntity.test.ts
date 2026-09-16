

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { StarTrekSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
loadEnvLocal(__dirname + '/../../../.env.local')


describe('SpacecraftEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when STAR_TREK_TEST_LIVE=TRUE.
  afterEach(liveDelay('STAR_TREK_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = StarTrekSDK.test()
    const ent = testsdk.Spacecraft()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.STAR_TREK_TEST_LIVE
    for (const op of ['list']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'spacecraft.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"dateStatus","req":false,"short":"Date of status","type":"`$STRING`","index$":0},{"active":true,"name":"name","req":false,"short":"Spacecraft name","type":"`$STRING`","index$":1},{"active":true,"name":"operator","req":false,"short":"Operating organization","type":"`$STRING`","index$":2},{"active":true,"name":"owner","req":false,"short":"Owner organization","type":"`$STRING`","index$":3},{"active":true,"name":"registry","req":false,"short":"Registry number","type":"`$STRING`","index$":4},{"active":true,"name":"spacecraftClass","req":false,"short":"Class of spacecraft","type":"`$STRING`","index$":5},{"active":true,"name":"status","req":false,"short":"Current status","type":"`$STRING`","index$":6},{"active":true,"name":"uid","req":false,"short":"Unique identifier","type":"`$STRING`","index$":7}],"name":"spacecraft","op":{"list":{"input":"data","name":"list","points":[{"active":true,"args":{"query":[{"active":true,"kind":"query","name":"name","orig":"name","reqd":false,"type":"`$STRING`","index$":0},{"active":true,"example":0,"kind":"query","name":"page_number","orig":"page_number","reqd":false,"type":"`$INTEGER`","index$":1},{"active":true,"example":50,"kind":"query","name":"page_size","orig":"page_size","reqd":false,"type":"`$INTEGER`","index$":2}]},"contract":{"id":"GET /spacecraft/search","json":"{\"operationId\":\"searchSpacecraft\",\"parameters\":[{\"description\":\"Spacecraft name\",\"in\":\"query\",\"name\":\"name\",\"schema\":{\"type\":\"string\"}},{\"description\":\"Zero-based page number\",\"in\":\"query\",\"name\":\"pageNumber\",\"schema\":{\"default\":0,\"minimum\":0,\"type\":\"integer\"}},{\"description\":\"Page size\",\"in\":\"query\",\"name\":\"pageSize\",\"schema\":{\"default\":50,\"maximum\":100,\"minimum\":1,\"type\":\"integer\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"page\":{\"properties\":{\"firstPage\":{\"description\":\"Whether this is the first page\",\"type\":\"boolean\"},\"lastPage\":{\"description\":\"Whether this is the last page\",\"type\":\"boolean\"},\"numberOfElements\":{\"description\":\"Number of elements on current page\",\"type\":\"integer\"},\"pageNumber\":{\"description\":\"Current page number (zero-based)\",\"type\":\"integer\"},\"pageSize\":{\"description\":\"Page size\",\"type\":\"integer\"},\"totalElements\":{\"description\":\"Total number of elements\",\"type\":\"integer\"},\"totalPages\":{\"description\":\"Total number of pages\",\"type\":\"integer\"}},\"type\":\"object\"},\"spacecraft\":{\"items\":{\"properties\":{\"dateStatus\":{\"description\":\"Date of status\",\"type\":\"string\"},\"name\":{\"description\":\"Spacecraft name\",\"type\":\"string\"},\"operator\":{\"description\":\"Operating organization\",\"type\":\"string\"},\"owner\":{\"description\":\"Owner organization\",\"type\":\"string\"},\"registry\":{\"description\":\"Registry number\",\"type\":\"string\"},\"spacecraftClass\":{\"description\":\"Class of spacecraft\",\"type\":\"string\"},\"status\":{\"description\":\"Current status\",\"type\":\"string\"},\"uid\":{\"description\":\"Unique identifier\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}},\"type\":\"object\"}}},\"description\":\"Successful response with spacecraft search results\"}},\"securitySource\":\"unspecified\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/spacecraft/search","segments":[{"lit":"spacecraft"},{"lit":"search"}],"select":{"$action":"search","exist":["name","page_number","page_size"]},"transform":{"req":"`reqdata`","res":"`body.spacecraft`"},"index$":0}],"key$":"list"}},"relations":{"ancestors":[]},"key$":"spacecraft","name__orig":"spacecraft","Name":"Spacecraft","name_":"spacecraft","name-":"spacecraft","NAME":"SPACECRAFT","index$":2}, {"active":true,"entity":"spacecraft","key$":"BasicSpacecraftFlow","kind":"basic","name":"BasicSpacecraftFlow","param":{},"step":[{"active":true,"data":{},"input":{},"match":{},"op":"list","spec":[],"valid":[{"apply":"ItemExists","def":{"ref":"spacecraft_ref01"}}],"index$":0}]}, 'Spacecraft')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let spacecraft_ref01_data = Object.values(setup.data.existing.spacecraft)[0] as any

    // LIST
    const spacecraft_ref01_ent = client.Spacecraft()
    const spacecraft_ref01_match: any = {}

    const spacecraft_ref01_list = (await spacecraft_ref01_ent.list(spacecraft_ref01_match)).map((e: any) => e.data())


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/spacecraft/SpacecraftTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = StarTrekSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['spacecraft01','spacecraft02','spacecraft03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'STAR_TREK_TEST_SPACECRAFT_ENTID': idmap,
    'STAR_TREK_TEST_LIVE': 'FALSE',
    'STAR_TREK_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['STAR_TREK_TEST_SPACECRAFT_ENTID']

  const live = 'TRUE' === env.STAR_TREK_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['STAR_TREK_TEST_SPACECRAFT_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new StarTrekSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.STAR_TREK_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  
