gitlab_rails['omniauth_enabled'] = true
gitlab_rails['omniauth_auto_sign_in_with_provider'] = 'saml'
gitlab_rails['omniauth_allow_single_sign_on'] = ['saml']
gitlab_rails['omniauth_block_auto_created_users'] = false
gitlab_rails['omniauth_auto_link_saml_user'] = true


gitlab_rails['omniauth_sync_email_from_provider'] = 'saml'
gitlab_rails['omniauth_sync_profile_from_provider'] = ['saml']
gitlab_rails['omniauth_sync_profile_attributes'] = ['email']
gitlab_rails['omniauth_providers'] = [
  {
    name: 'saml',
    args: {
      assertion_consumer_service_url: 'https://gitlab.company/users/auth/saml/callback',
      # Shown when navigating to certificates in authentik
      idp_cert_fingerprint: '4E:1E:CD:67:4A:67:5A:E9:6A:D0:3C:E6:DD:7A:F2:44:2E:76:00:6A',
      idp_sso_target_url: 'https://authentik.company/application/saml/<authentik application slug>/sso/binding/redirect/',
      issuer: 'https://gitlab.company',
      name_identifier_format: 'urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress',
      attribute_statements: {
        email: ['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress'],
        first_name: ['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'],
        nickname: ['http://schemas.goauthentik.io/2021/02/saml/username']
      }
    },
    label: 'authentik'
  }
]