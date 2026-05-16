<?php
declare(strict_types=1);

// StarTrek SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

StarTrekUtility::setRegistrar(function (StarTrekUtility $u): void {
    $u->clean = [StarTrekClean::class, 'call'];
    $u->done = [StarTrekDone::class, 'call'];
    $u->make_error = [StarTrekMakeError::class, 'call'];
    $u->feature_add = [StarTrekFeatureAdd::class, 'call'];
    $u->feature_hook = [StarTrekFeatureHook::class, 'call'];
    $u->feature_init = [StarTrekFeatureInit::class, 'call'];
    $u->fetcher = [StarTrekFetcher::class, 'call'];
    $u->make_fetch_def = [StarTrekMakeFetchDef::class, 'call'];
    $u->make_context = [StarTrekMakeContext::class, 'call'];
    $u->make_options = [StarTrekMakeOptions::class, 'call'];
    $u->make_request = [StarTrekMakeRequest::class, 'call'];
    $u->make_response = [StarTrekMakeResponse::class, 'call'];
    $u->make_result = [StarTrekMakeResult::class, 'call'];
    $u->make_point = [StarTrekMakePoint::class, 'call'];
    $u->make_spec = [StarTrekMakeSpec::class, 'call'];
    $u->make_url = [StarTrekMakeUrl::class, 'call'];
    $u->param = [StarTrekParam::class, 'call'];
    $u->prepare_auth = [StarTrekPrepareAuth::class, 'call'];
    $u->prepare_body = [StarTrekPrepareBody::class, 'call'];
    $u->prepare_headers = [StarTrekPrepareHeaders::class, 'call'];
    $u->prepare_method = [StarTrekPrepareMethod::class, 'call'];
    $u->prepare_params = [StarTrekPrepareParams::class, 'call'];
    $u->prepare_path = [StarTrekPreparePath::class, 'call'];
    $u->prepare_query = [StarTrekPrepareQuery::class, 'call'];
    $u->result_basic = [StarTrekResultBasic::class, 'call'];
    $u->result_body = [StarTrekResultBody::class, 'call'];
    $u->result_headers = [StarTrekResultHeaders::class, 'call'];
    $u->transform_request = [StarTrekTransformRequest::class, 'call'];
    $u->transform_response = [StarTrekTransformResponse::class, 'call'];
});
