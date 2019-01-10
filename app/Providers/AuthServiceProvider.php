<?php

namespace App\Providers;

use App\Models\UserAddress;
use App\Policies\UserAddressPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        UserAddress::class => UserAddressPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot()
    {
        $this->registerPolicies();
    }
}
