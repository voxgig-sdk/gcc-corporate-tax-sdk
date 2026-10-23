<?php
declare(strict_types=1);

// GccCorporateTax SDK base feature

class GccCorporateTaxBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(GccCorporateTaxContext $ctx, array $options): void {}
    public function PostConstruct(GccCorporateTaxContext $ctx): void {}
    public function PostConstructEntity(GccCorporateTaxContext $ctx): void {}
    public function SetData(GccCorporateTaxContext $ctx): void {}
    public function GetData(GccCorporateTaxContext $ctx): void {}
    public function GetMatch(GccCorporateTaxContext $ctx): void {}
    public function SetMatch(GccCorporateTaxContext $ctx): void {}
    public function PrePoint(GccCorporateTaxContext $ctx): void {}
    public function PreSpec(GccCorporateTaxContext $ctx): void {}
    public function PreRequest(GccCorporateTaxContext $ctx): void {}
    public function PreResponse(GccCorporateTaxContext $ctx): void {}
    public function PreResult(GccCorporateTaxContext $ctx): void {}
    public function PreDone(GccCorporateTaxContext $ctx): void {}
    public function PreUnexpected(GccCorporateTaxContext $ctx): void {}
}
