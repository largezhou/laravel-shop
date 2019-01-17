<?php

function test_helper()
{
    return 'OK';
}

/**
 * 把当前请求的路由名，改为短横线 - 分割
 */
function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}

/**
 * 如果是本地环境，并且设置了 ngrok 地址，则返回该 ngrok地址，否则返回 route 函数的地址
 *
 * @param string $routeName
 * @param array  $parameters
 *
 * @return string
 */
function ngrok_url($routeName, $parameters = [])
{
    // 开发环境，并且配置了 NGROK_URL
    if (app()->environment('local') && $url = config('app.ngrok_url')) {
        // route() 函数第三个参数代表是否绝对路径
        return $url.route($routeName, $parameters, false);
    }

    return route($routeName, $parameters);
}
