

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


describe('EpisodeEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when STAR_TREK_TEST_LIVE=TRUE.
  afterEach(liveDelay('STAR_TREK_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = StarTrekSDK.test()
    const ent = testsdk.Episode()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.STAR_TREK_TEST_LIVE
    for (const op of ['list']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'episode.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"episodeNumber","req":false,"short":"Episode number","type":"`$INTEGER`","index$":0},{"active":true,"name":"featureLength","req":false,"short":"Whether this is a feature length episode","type":"`$BOOLEAN`","index$":1},{"active":true,"name":"productionSerialNumber","req":false,"short":"Production serial number","type":"`$STRING`","index$":2},{"active":true,"name":"seasonNumber","req":false,"short":"Season number","type":"`$INTEGER`","index$":3},{"active":true,"format":"float","name":"stardateFrom","req":false,"short":"Starting stardate","type":"`$NUMBER`","index$":4},{"active":true,"format":"float","name":"stardateTo","req":false,"short":"Ending stardate","type":"`$NUMBER`","index$":5},{"active":true,"name":"title","req":false,"short":"Episode title","type":"`$STRING`","index$":6},{"active":true,"name":"uid","req":false,"short":"Unique identifier","type":"`$STRING`","index$":7},{"active":true,"format":"date","name":"usAirDate","req":false,"short":"US air date","type":"`$STRING`","index$":8},{"active":true,"name":"yearFrom","req":false,"short":"Starting year","type":"`$INTEGER`","index$":9},{"active":true,"name":"yearTo","req":false,"short":"Ending year","type":"`$INTEGER`","index$":10}],"name":"episode","op":{"list":{"input":"data","name":"list","points":[{"active":true,"args":{"query":[{"active":true,"kind":"query","name":"episode_number","orig":"episode_number","reqd":false,"type":"`$INTEGER`","index$":0},{"active":true,"example":0,"kind":"query","name":"page_number","orig":"page_number","reqd":false,"type":"`$INTEGER`","index$":1},{"active":true,"example":50,"kind":"query","name":"page_size","orig":"page_size","reqd":false,"type":"`$INTEGER`","index$":2},{"active":true,"kind":"query","name":"season_number","orig":"season_number","reqd":false,"type":"`$INTEGER`","index$":3},{"active":true,"kind":"query","name":"title","orig":"title","reqd":false,"type":"`$STRING`","index$":4}]},"contract":{"id":"GET /episode/search","json":"{\"operationId\":\"searchEpisodes\",\"parameters\":[{\"description\":\"Episode title\",\"in\":\"query\",\"name\":\"title\",\"schema\":{\"type\":\"string\"}},{\"description\":\"Season number\",\"in\":\"query\",\"name\":\"seasonNumber\",\"schema\":{\"type\":\"integer\"}},{\"description\":\"Episode number\",\"in\":\"query\",\"name\":\"episodeNumber\",\"schema\":{\"type\":\"integer\"}},{\"description\":\"Zero-based page number\",\"in\":\"query\",\"name\":\"pageNumber\",\"schema\":{\"default\":0,\"minimum\":0,\"type\":\"integer\"}},{\"description\":\"Page size\",\"in\":\"query\",\"name\":\"pageSize\",\"schema\":{\"default\":50,\"maximum\":100,\"minimum\":1,\"type\":\"integer\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"episodes\":{\"items\":{\"properties\":{\"episodeNumber\":{\"description\":\"Episode number\",\"type\":\"integer\"},\"featureLength\":{\"description\":\"Whether this is a feature length episode\",\"type\":\"boolean\"},\"productionSerialNumber\":{\"description\":\"Production serial number\",\"type\":\"string\"},\"seasonNumber\":{\"description\":\"Season number\",\"type\":\"integer\"},\"stardateFrom\":{\"description\":\"Starting stardate\",\"format\":\"float\",\"type\":\"number\"},\"stardateTo\":{\"description\":\"Ending stardate\",\"format\":\"float\",\"type\":\"number\"},\"title\":{\"description\":\"Episode title\",\"type\":\"string\"},\"uid\":{\"description\":\"Unique identifier\",\"type\":\"string\"},\"usAirDate\":{\"description\":\"US air date\",\"format\":\"date\",\"type\":\"string\"},\"yearFrom\":{\"description\":\"Starting year\",\"type\":\"integer\"},\"yearTo\":{\"description\":\"Ending year\",\"type\":\"integer\"}},\"type\":\"object\"},\"type\":\"array\"},\"page\":{\"properties\":{\"firstPage\":{\"description\":\"Whether this is the first page\",\"type\":\"boolean\"},\"lastPage\":{\"description\":\"Whether this is the last page\",\"type\":\"boolean\"},\"numberOfElements\":{\"description\":\"Number of elements on current page\",\"type\":\"integer\"},\"pageNumber\":{\"description\":\"Current page number (zero-based)\",\"type\":\"integer\"},\"pageSize\":{\"description\":\"Page size\",\"type\":\"integer\"},\"totalElements\":{\"description\":\"Total number of elements\",\"type\":\"integer\"},\"totalPages\":{\"description\":\"Total number of pages\",\"type\":\"integer\"}},\"type\":\"object\"}},\"type\":\"object\"}}},\"description\":\"Successful response with episode search results\"}},\"securitySource\":\"unspecified\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/episode/search","segments":[{"lit":"episode"},{"lit":"search"}],"select":{"$action":"search","exist":["episode_number","page_number","page_size","season_number","title"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"list"}},"relations":{"ancestors":[]},"key$":"episode","name__orig":"episode","Name":"Episode","name_":"episode","name-":"episode","NAME":"EPISODE","index$":1}, {"active":true,"entity":"episode","key$":"BasicEpisodeFlow","kind":"basic","name":"BasicEpisodeFlow","param":{},"step":[{"active":true,"data":{},"input":{},"match":{},"op":"list","spec":[],"valid":[{"apply":"ItemExists","def":{"ref":"episode_ref01"}}],"index$":0}]}, 'Episode')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let episode_ref01_data = Object.values(setup.data.existing.episode)[0] as any

    // LIST
    const episode_ref01_ent = client.Episode()
    const episode_ref01_match: any = {}

    const episode_ref01_list = (await episode_ref01_ent.list(episode_ref01_match)).map((e: any) => e.data())


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/episode/EpisodeTestData.json')

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
    ['episode01','episode02','episode03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'STAR_TREK_TEST_EPISODE_ENTID': idmap,
    'STAR_TREK_TEST_LIVE': 'FALSE',
    'STAR_TREK_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['STAR_TREK_TEST_EPISODE_ENTID']

  const live = 'TRUE' === env.STAR_TREK_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['STAR_TREK_TEST_EPISODE_ENTID']
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
  
