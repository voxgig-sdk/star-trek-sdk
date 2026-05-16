<?php
declare(strict_types=1);

// StarTrek SDK base feature

class StarTrekBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(StarTrekContext $ctx, array $options): void {}
    public function PostConstruct(StarTrekContext $ctx): void {}
    public function PostConstructEntity(StarTrekContext $ctx): void {}
    public function SetData(StarTrekContext $ctx): void {}
    public function GetData(StarTrekContext $ctx): void {}
    public function GetMatch(StarTrekContext $ctx): void {}
    public function SetMatch(StarTrekContext $ctx): void {}
    public function PrePoint(StarTrekContext $ctx): void {}
    public function PreSpec(StarTrekContext $ctx): void {}
    public function PreRequest(StarTrekContext $ctx): void {}
    public function PreResponse(StarTrekContext $ctx): void {}
    public function PreResult(StarTrekContext $ctx): void {}
    public function PreDone(StarTrekContext $ctx): void {}
    public function PreUnexpected(StarTrekContext $ctx): void {}
}
