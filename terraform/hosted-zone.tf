### to use with own registered domain ###
#resource "aws_route53_zone" "main" {
#  name  = var.domain_name
#}


#resource "aws_route53_record" "app" {
#  zone_id = aws_route53_zone.main.zone_id
#  name    = "www.${var.domain_name}"
#  type    = "A"
#  ttl     = "30"
#  alias {
#    name                   = aws_cloudfront_distribution.website_cdn.hosted_zone_id
#    zone_id                = aws_route53_zone.main.zone_id
#    evaluate_target_health = true
#  }
#}


#resource "aws_route53domains_registered_domain" "my_net_com" {
#  domain_name = aws_route53_zone.main.name
#
#  dynamic "name_server" {
#    for_each = toset(aws_route53_zone.main.name_servers)
#    content {
#      name = name_server.value
#    }
#  }
#}