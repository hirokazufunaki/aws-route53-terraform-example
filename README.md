# aws-route53-terraform-example

## ディレクトリ構成

```
.
├── teams
│   ├── platform
│   │   └── env
│   │       ├── prod
│   │       └── test
│   │           ├── ap-northeast-1
│   │           └── ap-northeast-3
│   └── stream-aligned
│       └── env
│           ├── prod
│           └── test
│               ├── ap-northeast-1
│               ├── ap-northeast-3
│               └── global
├── modules
│   ├── network
│   ├── ram
│   └── route53
│       ├── resolver
│       │   ├── endpoint
│       │   ├── rule
│       │   └── rule-association
│       └──  hosted-zone
│           ├── private-hosted-zone
│           ├── public-hosted-zone
│           ├── record
│           │   ├── a-record
│           │   └── ailias-record
│           └── zone-association
└── templates
    └── ...
```
