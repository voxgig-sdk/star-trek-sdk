

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


describe('SpeciesEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when STAR_TREK_TEST_LIVE=TRUE.
  afterEach(liveDelay('STAR_TREK_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = StarTrekSDK.test()
    const ent = testsdk.Species()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.STAR_TREK_TEST_LIVE
    for (const op of ['list']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'species.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"extinctSpecies","req":false,"short":"Whether the species is extinct","type":"`$BOOLEAN`","index$":0},{"active":true,"name":"extraGalacticSpecies","req":false,"short":"Whether the species is from outside the galaxy","type":"`$BOOLEAN`","index$":1},{"active":true,"name":"homeworld","req":false,"short":"Name of homeworld","type":"`$STRING`","index$":2},{"active":true,"name":"humanoidSpecies","req":false,"short":"Whether the species is humanoid","type":"`$BOOLEAN`","index$":3},{"active":true,"name":"name","req":false,"short":"Species name","type":"`$STRING`","index$":4},{"active":true,"name":"quadrant","req":false,"short":"Quadrant of origin","type":"`$STRING`","index$":5},{"active":true,"name":"uid","req":false,"short":"Unique identifier","type":"`$STRING`","index$":6},{"active":true,"name":"warpCapableSpecies","req":false,"short":"Whether the species is warp capable","type":"`$BOOLEAN`","index$":7}],"name":"species","op":{"list":{"input":"data","name":"list","points":[{"active":true,"args":{"query":[{"active":true,"kind":"query","name":"name","orig":"name","reqd":false,"type":"`$STRING`","index$":0},{"active":true,"example":0,"kind":"query","name":"page_number","orig":"page_number","reqd":false,"type":"`$INTEGER`","index$":1},{"active":true,"example":50,"kind":"query","name":"page_size","orig":"page_size","reqd":false,"type":"`$INTEGER`","index$":2}]},"contract":{"id":"GET /species/search","json":"{\"operationId\":\"searchSpecies\",\"parameters\":[{\"description\":\"Species name\",\"in\":\"query\",\"name\":\"name\",\"schema\":{\"type\":\"string\"}},{\"description\":\"Zero-based page number\",\"in\":\"query\",\"name\":\"pageNumber\",\"schema\":{\"default\":0,\"minimum\":0,\"type\":\"integer\"}},{\"description\":\"Page size\",\"in\":\"query\",\"name\":\"pageSize\",\"schema\":{\"default\":50,\"maximum\":100,\"minimum\":1,\"type\":\"integer\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"page\":{\"properties\":{\"firstPage\":{\"description\":\"Whether this is the first page\",\"type\":\"boolean\"},\"lastPage\":{\"description\":\"Whether this is the last page\",\"type\":\"boolean\"},\"numberOfElements\":{\"description\":\"Number of elements on current page\",\"type\":\"integer\"},\"pageNumber\":{\"description\":\"Current page number (zero-based)\",\"type\":\"integer\"},\"pageSize\":{\"description\":\"Page size\",\"type\":\"integer\"},\"totalElements\":{\"description\":\"Total number of elements\",\"type\":\"integer\"},\"totalPages\":{\"description\":\"Total number of pages\",\"type\":\"integer\"}},\"type\":\"object\"},\"species\":{\"items\":{\"properties\":{\"extinctSpecies\":{\"description\":\"Whether the species is extinct\",\"type\":\"boolean\"},\"extraGalacticSpecies\":{\"description\":\"Whether the species is from outside the galaxy\",\"type\":\"boolean\"},\"homeworld\":{\"description\":\"Name of homeworld\",\"type\":\"string\"},\"humanoidSpecies\":{\"description\":\"Whether the species is humanoid\",\"type\":\"boolean\"},\"name\":{\"description\":\"Species name\",\"type\":\"string\"},\"quadrant\":{\"description\":\"Quadrant of origin\",\"type\":\"string\"},\"uid\":{\"description\":\"Unique identifier\",\"type\":\"string\"},\"warpCapableSpecies\":{\"description\":\"Whether the species is warp capable\",\"type\":\"boolean\"}},\"type\":\"object\"},\"type\":\"array\"}},\"type\":\"object\"}}},\"description\":\"Successful response with species search results\"}},\"securitySource\":\"unspecified\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/species/search","segments":[{"lit":"species"},{"lit":"search"}],"select":{"$action":"search","exist":["name","page_number","page_size"]},"transform":{"req":"`reqdata`","res":"`body.species`"},"index$":0}],"key$":"list"}},"relations":{"ancestors":[]},"key$":"species","name__orig":"species","Name":"Species","name_":"species","name-":"species","NAME":"SPECIES","index$":3}, {"active":true,"entity":"species","key$":"BasicSpeciesFlow","kind":"basic","name":"BasicSpeciesFlow","param":{},"step":[{"active":true,"data":{},"input":{},"match":{},"op":"list","spec":[],"valid":[{"apply":"ItemExists","def":{"ref":"species_ref01"}}],"index$":0}]}, 'Species')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let species_ref01_data = Object.values(setup.data.existing.species)[0] as any

    // LIST
    const species_ref01_ent = client.Species()
    const species_ref01_match: any = {}

    const species_ref01_list = (await species_ref01_ent.list(species_ref01_match)).map((e: any) => e.data())


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/species/SpeciesTestData.json')

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
    ['species01','species02','species03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'STAR_TREK_TEST_SPECIES_ENTID': idmap,
    'STAR_TREK_TEST_LIVE': 'FALSE',
    'STAR_TREK_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['STAR_TREK_TEST_SPECIES_ENTID']

  const live = 'TRUE' === env.STAR_TREK_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['STAR_TREK_TEST_SPECIES_ENTID']
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
  
