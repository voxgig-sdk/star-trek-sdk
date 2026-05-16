<?php
declare(strict_types=1);

// StarTrek SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class StarTrekMakeContext
{
    public static function call(array $ctxmap, ?StarTrekContext $basectx): StarTrekContext
    {
        return new StarTrekContext($ctxmap, $basectx);
    }
}
