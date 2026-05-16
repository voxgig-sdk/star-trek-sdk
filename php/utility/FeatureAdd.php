<?php
declare(strict_types=1);

// StarTrek SDK utility: feature_add

class StarTrekFeatureAdd
{
    public static function call(StarTrekContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
