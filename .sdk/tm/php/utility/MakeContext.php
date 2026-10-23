<?php
declare(strict_types=1);

// GccCorporateTax SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class GccCorporateTaxMakeContext
{
    public static function call(array $ctxmap, ?GccCorporateTaxContext $basectx): GccCorporateTaxContext
    {
        return new GccCorporateTaxContext($ctxmap, $basectx);
    }
}
