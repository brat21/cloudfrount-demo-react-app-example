### to use with own registered domain ###

#resource "aws_acm_certificate" "this" {
#  domain_name               = var.domain_name
#  subject_alternative_names = "*.${var.domain_name}"
#  validation_method         = "DNS"
#
#  dynamic "validation_option" {
#    for_each = var.validation_option
#
#    content {
#      domain_name       = var.domain_name
#      validation_domain = var.domain_name
#    }
#  }
#
#  lifecycle {
#    create_before_destroy = true
#  }
#}
#
#resource "aws_route53_record" "validation" {
#  zone_id = aws_route53_zone.primary.zone_id
#  name    = aws_acm_certificate.this.domain_validation_options
#  type    = "CNAME"
#  ttl     = 300
#  records = [[tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_value]]
#  allow_overwrite = true
#  depends_on = [aws_acm_certificate.this]
#}
#
#resource "aws_acm_certificate_validation" "this" {
#  certificate_arn = aws_acm_certificate.this[0].arn
#  validation_record_fqdns = [aws_route53_record.validation.fqdn]
#}