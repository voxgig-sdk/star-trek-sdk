<?php
declare(strict_types=1);

// StarTrek SDK utility: result_body

class StarTrekResultBody
{
    public static function call(StarTrekContext $ctx): ?StarTrekResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
