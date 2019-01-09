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
