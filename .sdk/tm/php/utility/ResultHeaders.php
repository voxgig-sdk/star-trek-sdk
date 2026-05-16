<?php
declare(strict_types=1);

// StarTrek SDK utility: result_headers

class StarTrekResultHeaders
{
    public static function call(StarTrekContext $ctx): ?StarTrekResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
