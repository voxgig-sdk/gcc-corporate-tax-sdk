<?php
declare(strict_types=1);

// GccCorporateTax SDK utility: result_headers

class GccCorporateTaxResultHeaders
{
    public static function call(GccCorporateTaxContext $ctx): ?GccCorporateTaxResult
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
