Project Structure
-----------------
devops-challenge/
│
├── README.md                    # Detailed main documentation
├── SETUP.md                     # Detailed setup instructions
├── ARCHITECTURE.md              # Architecture decisions
│
├── terraform/                   # Infrastructure as Code
│   ├── modules/                 # Reusable Terraform modules
│   │   ├── networking/
│   │   ├── kubernetes/
│   │   └── security/
│   ├── environments/            # For environment-specific configs
│   │   ├── local/               #local env
│   │   ├── staging/             #staging env
│   │   └── production/          #prod env
│   ├── main.tf                  #For core infrastructure logic
│   ├── variables.tf             #For input parameters
│   ├── outputs.tf               #For printing useful values after terraform apply
│   └── versions.tf              #For Locking Terraform & Providing version
│
├── jenkins/                     # CI/CD Configuration
│   ├── Jenkinsfile              # Main pipeline
│   ├── scripts/                 # Helper scripts
│   └── plugins.txt              # Required Jenkins plugins
│
├── kubernetes/                  # K8s Deployments
│   ├── manifests/               # Raw YAML files
│   │   ├── staging/
│   │   └── production/
│   ├── helm-chart/              # Helm chart (if chosen)
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   └── kustomize/               # Kustomize overlays (optional)
│
├── application/                 # Sample Application
│   ├── src/                     # Application source code
│   ├── Dockerfile
│   ├── docker-compose.yml       # Local development
│   └── requirements.txt         # Dependencies
│
├── monitoring/                  # Observability (bonus)
│   ├── prometheus/              # To collect the metirics from various data sources
│   ├── grafana/                 # To visualize dashboards
│   └── alerting/                # For alerting purpose
│
├── security/                    # Security configurations
│   ├── policies/                # Security policies
│   ├── scans/                   # Security scan configs
│   └── certificates/            # TLS certificates
│
├── scripts/                     # Automation scripts
│   ├── setup-local.sh           # script for Local environment setup
│   ├── deploy.sh                # script for deployment helper
│   └── cleanup.sh               # script for environment cleanup
│
└── docs/                        # this is the place for additional documentation
    ├── images/                  # Architecture diagrams
    ├── troubleshooting.md
    └── best-practices.md

