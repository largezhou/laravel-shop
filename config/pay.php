<?php

return [
    'alipay' => [
        'app_id' => '2016092500590869',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxZqoqmHFlm6jhODHQw988aVoFfr03s5Tz7QkBRco4N9K9VCg9HW6QmgnY70+5wEx98YJIfeILkPmaHcXn0xWMJSTwiEaQuDabOnt889B9MeG1ioPfsM4v+sakqYlrqT9jvOoBXc25BuaYW0mIY9jBqXfRqxKmla4X2XKAl7cVYbAvenyMBT3KUE48vzmRlssH+IjqkKCYWJb73YYsXNtytCsh8k1QcgSTyUcR2vNkWHYAAomRPhA+CX+f0owdTE2viGp6upGwGso/eBf/ooraLSfjASBLgVI0PyMD2Iqm+u5ZkKDw6yC/Qzv4hoq/iSIF5jpUeNEDoHAON1L9yyDqQIDAQAB',
        'private_key' => 'MIIEowIBAAKCAQEA08dnUHdQVzdupkNOUHA5UOrkj/arLI6Y6AZWEfgdmzhryW/L8dW+hLUwID2RwAJKe05eXcbQZ6vDEQjAKSmLX3SBQgxYkNyEySs33MPNkeYig/Lov2WH0CyEhy/Ml0aggg3abXAjnefD6A/g6iSyLsYMmvouVNspuu7VkVyv7LkBFy9aMVL2+mp+oJy54HY/FlK50xZ3z6eL72JywPs5g0YSR37LwT/o2jVODNyZTloEA78MDr2ZNI1mBYvjXI5yvMQzDFGrFU3XGhPYSrGyynFzp0Srluq7zVhuMn1zsbJkda2b0y3zTMLJxJrVODjJSJJgguj7DpEnX4eN1THxywIDAQABAoIBAEC+wbM0BvfjFoz2HscwyBUY+u+YdhSVM+IbrcyokkSWJz3aU/uHYUupKSFyMVEGYkb4WplI4wYO2QAoMLdk4Bs6vxm2NI11HZNzBw0TP5HPTdYROV7qZ28ZbRr3XhERopigK5sxoXHxHU+hKx3qQh9SpR/sRKXkqwlfYyOhtpckGcZAGdY8Bmfsoj15/zhtHHZkWQ09qzRXYFH3w+yhPWcaZ2DHGq7bV7CyV2MyTbJIuGdc5qen7WNiKvOz0OM5lS0ExMjIRTw93jnKIVhb3xMEy0N8jRPiOKkSxzoElxngaU+yM6cj4r2lT2X8A9CWXw/VGT7nwQ4ZvkCCrBku0KECgYEA9RidNt2wVrqyEDbHOKcxUZmS75EVHsZW13yZbQbqsgrk7GbyG+8f6aPLXfKDi7tVFTnE3pTdCI6l5UXWKH19DXn7f1PBda5EGaiIesFpCVIHF6FGSYpgabASrPF1PzOWthnYPTHqGkHo8IFB2y2IMfYLtHaFk8zcpdukoxMcX4cCgYEA3TNXae2ZklkiJWd64aIwk0m7qE1D75Mr8yQG1sDl7iRPLWaF5XWK4eBFV+9LFtE86a1XEPNhCYb9WOluBJTT2zxr+BVpv+YNiqWERb0+wRixHWmbBZbL4qgj3dAwGymiANh9+7gDlL4WCmMKwixKe1aPwWlXSo+2FfSEQdkYxJ0CgYBtbkD7dz29a3wHSz3l6JhXk5cMSZ3BcNLjQWmLSVROjBisCEa+/CQmgBBT8OyU3d5eLL3el16c7HvbgzPcPjMwai9FKVMuRNF5F0tga6yHEc3C2in0ucjUR13/Q4uS3WjEA4QNxpR8hsMHZt7NimXN0MpnF6gKVqSJlSjL+sNnTwKBgExL4jHSV28oOWPnbnYXKGQVQZoKlI01GSqzWXyHaoealIjXXQXJZk8EuUZcbmz/XOBI/sgE+op7ujUJxv3ji7OKAr++OwyKwE77SkV3wgZ+itDXVTY3TjnuvvhKT91+nbdm9QV28h1C9307rkFNX59tOwZ+XDKGoUqvXVMNG8LtAoGBAIhl1isFfK9WMU+8kLwG7AKJR/AzKY5IA3N8ImPFzdR6H3Oa2POUdeGQGcAt7WT0whiLZmsp8V4SeUUDaFOhS1jyV/dV2ADSY90TbYkMPTEXo9b3gVy07J7grcGWbnLaauaA4wsUNFe89QNUPLbTOjMWA/+Aw3BXF9KxVVv61/KN',
        'log' => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id' => '公众号 app_id',
        'mch_id' => '商务号：产品中心 -> 开发配置 ->商户号',
        'key' => '自行设置的 API 密钥，32位随机字母和数字',
        // 账户中心 -> API安全 -> 下载证书
        'cert_client' => resource_path('wechat_pay/apiclient_cert.pem'),
        'cert_key' => resource_path('wechat_pay/apiclient_key.pem'),
        'log' => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];
