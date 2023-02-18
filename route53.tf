resource "aws_route53_zone" "private" {
  name = "zone.armada"

  vpc {
    vpc_id = aws_vpc.demovpc.id
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.private.zone_id
  name    = "website.io"
  type    = "A"

  alias {
    name                   = aws_elb.web_elb.dns_name
    zone_id                = aws_elb.web_elb.zone_id
    evaluate_target_health = true
  }
}