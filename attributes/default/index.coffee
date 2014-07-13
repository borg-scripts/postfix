module.exports = ->
  @default postfix:
    mail_type: "client"
    myhostname: @server['fqdn']
    mydomain: @server['tld']
    myorigin: "$myhostname"
    relayhost: ""
    mail_relay_networks: "127.0.0.0/8"
    relayhost_role: "relayhost"
    multi_environment_relay: false
    inet_interfaces: null

    smtpd_use_tls: "yes"
    smtp_sasl_auth_enable: "no"
    smtp_sasl_password_maps: "hash:/etc/postfix/sasl_passwd"
    smtp_sasl_security_options: "noanonymous"
    smtp_tls_cafile: "/etc/postfix/cacert.pem"
    smtp_use_tls: "yes"
    smtp_sasl_user_name: ""
    smtp_sasl_passwd: ""

    use_procmail: false

    milter_default_action: "tempfail"
    milter_protocol: "6"
    smtpd_milters: ""
    non_smtpd_milters: ""

    aliases: {}

    sender_canonical_classes: null
    recipient_canonical_classes: null
    canonical_classes: null
    sender_canonical_maps: null
    recipient_canonical_maps: null
    canonical_maps: null
