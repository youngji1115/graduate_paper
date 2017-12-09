.class Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;
.source "RegionDefaults.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    new-instance v0, Lcom/amazonaws/regions/Region;

    const-string/jumbo v2, "us-east-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v2, "s3"

    const-string v3, "s3.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 32
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    const-string v2, "monitoring"

    const-string v3, "monitoring.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 34
    const-string v2, "sns"

    const-string v3, "sns.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 35
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 36
    const-string v2, "sdb"

    const-string v3, "sdb.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 37
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 38
    const-string v2, "ec2"

    const-string v3, "ec2.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 39
    const-string v2, "kinesis"

    const-string v3, "kinesis.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 40
    const-string v2, "firehose"

    const-string v3, "firehose.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 41
    const-string v2, "lambda"

    const-string v3, "lambda.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    const-string v2, "sqs"

    const-string v3, "sqs.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 43
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 45
    const-string v2, "email"

    const-string v3, "email.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 49
    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    const-string v2, "mobileanalytics"

    const-string v3, "mobileanalytics.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 51
    const-string v2, "machinelearning"

    const-string v3, "machinelearning.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 53
    const-string v2, "kms"

    const-string v3, "kms.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 54
    const-string v2, "execute-api"

    const-string v3, "iot.us-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 56
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string/jumbo v2, "us-west-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "s3"

    const-string v3, "s3-us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 60
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 61
    const-string v2, "monitoring"

    const-string v3, "monitoring.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 62
    const-string v2, "sns"

    const-string v3, "sns.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 63
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 64
    const-string v2, "sdb"

    const-string v3, "sdb.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 66
    const-string v2, "ec2"

    const-string v3, "ec2.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    const-string v2, "sqs"

    const-string v3, "sqs.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 69
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 71
    const-string v2, "kms"

    const-string v3, "kms.us-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 73
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string/jumbo v2, "us-west-2"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v2, "s3"

    const-string v3, "s3-us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78
    const-string v2, "monitoring"

    const-string v3, "monitoring.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 79
    const-string v2, "sns"

    const-string v3, "sns.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    const-string v2, "sdb"

    const-string v3, "sdb.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 82
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 83
    const-string v2, "ec2"

    const-string v3, "ec2.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 84
    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 85
    const-string v2, "firehose"

    const-string v3, "firehose.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 86
    const-string v2, "lambda"

    const-string v3, "lambda.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    const-string v2, "sqs"

    const-string v3, "sqs.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 88
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 90
    const-string v2, "email"

    const-string v3, "email.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 91
    const-string v2, "kms"

    const-string v3, "kms.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 92
    const-string v2, "execute-api"

    const-string v3, "iot.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 93
    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 94
    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 96
    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-west-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 98
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "ap-south-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v2, "s3"

    const-string v3, "s3-ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 103
    const-string v2, "monitoring"

    const-string v3, "monitoring.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 104
    const-string v2, "sns"

    const-string v3, "sns.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 105
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 106
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 107
    const-string v2, "ec2"

    const-string v3, "ec2.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    const-string v2, "sqs"

    const-string v3, "sqs.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 112
    const-string v2, "kms"

    const-string v3, "kms.ap-south-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 114
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "ap-northeast-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v2, "s3"

    const-string v3, "s3-ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 118
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 119
    const-string v2, "monitoring"

    const-string v3, "monitoring.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 121
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 122
    const-string v2, "sdb"

    const-string v3, "sdb.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 123
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 125
    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 126
    const-string v2, "lambda"

    const-string v3, "lambda.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 127
    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 128
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 130
    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 133
    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 134
    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 135
    const-string v2, "execute-api"

    const-string v3, "iot.ap-northeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 137
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "ap-northeast-2"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v2, "s3"

    const-string v3, "s3-ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 141
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 142
    const-string v2, "monitoring"

    const-string v3, "monitoring.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 144
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 145
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 146
    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 147
    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 149
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 151
    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 153
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "ap-southeast-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 157
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 158
    const-string v2, "monitoring"

    const-string v3, "monitoring.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 159
    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 160
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 161
    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 162
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 164
    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 165
    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 166
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 168
    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 170
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "ap-southeast-2"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 174
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 175
    const-string v2, "monitoring"

    const-string v3, "monitoring.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 176
    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 178
    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 179
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 180
    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 181
    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 182
    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 183
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 185
    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-2.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 187
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "sa-east-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v2, "s3"

    const-string v3, "s3-sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 191
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 192
    const-string v2, "monitoring"

    const-string v3, "monitoring.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 193
    const-string v2, "sns"

    const-string v3, "sns.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 194
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 195
    const-string v2, "sdb"

    const-string v3, "sdb.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 196
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 197
    const-string v2, "ec2"

    const-string v3, "ec2.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 198
    const-string v2, "sqs"

    const-string v3, "sqs.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 199
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 201
    const-string v2, "kms"

    const-string v3, "kms.sa-east-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 203
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "eu-west-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v2, "s3"

    const-string v3, "s3-eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 207
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 208
    const-string v2, "monitoring"

    const-string v3, "monitoring.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 209
    const-string v2, "sns"

    const-string v3, "sns.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 210
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 211
    const-string v2, "sdb"

    const-string v3, "sdb.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 212
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 213
    const-string v2, "ec2"

    const-string v3, "ec2.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 214
    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 215
    const-string v2, "firehose"

    const-string v3, "firehose.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 216
    const-string v2, "lambda"

    const-string v3, "lambda.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 217
    const-string v2, "sqs"

    const-string v3, "sqs.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 218
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 220
    const-string v2, "email"

    const-string v3, "email.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 221
    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 222
    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 224
    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 225
    const-string v2, "machinelearning"

    const-string v3, "machinelearning.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 227
    const-string v2, "kms"

    const-string v3, "kms.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 228
    const-string v2, "execute-api"

    const-string v3, "iot.eu-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "eu-central-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v2, "sqs"

    const-string v3, "sqs.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 234
    const-string v2, "s3"

    const-string v3, "s3.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 235
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 236
    const-string v2, "monitoring"

    const-string v3, "monitoring.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 237
    const-string v2, "sns"

    const-string v3, "sns.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 238
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 239
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 240
    const-string v2, "ec2"

    const-string v3, "ec2.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 242
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 244
    const-string v2, "kms"

    const-string v3, "kms.eu-central-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 246
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string v2, "cn-north-1"

    const-string v3, "amazonaws.com.cn"

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 250
    const-string v2, "ec2"

    const-string v3, "ec2.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 251
    const-string v2, "sns"

    const-string v3, "sns.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 252
    const-string v2, "sqs"

    const-string v3, "sqs.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 253
    const-string v2, "s3"

    const-string v3, "s3.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 254
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 257
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 258
    const-string v2, "monitoring"

    const-string v3, "monitoring.cn-north-1.amazonaws.com.cn"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 260
    new-instance v0, Lcom/amazonaws/regions/Region;

    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    const-string/jumbo v2, "us-gov-west-1"

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v0    # "region":Lcom/amazonaws/regions/Region;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 264
    const-string v2, "ec2"

    const-string v3, "ec2.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 265
    const-string v2, "sns"

    const-string v3, "sns.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 266
    const-string v2, "sqs"

    const-string v3, "sqs.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 267
    const-string v2, "s3"

    const-string v3, "s3-us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 268
    const-string/jumbo v2, "sts"

    const-string/jumbo v3, "sts.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 269
    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 271
    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v4, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 272
    const-string v2, "monitoring"

    const-string v3, "monitoring.us-gov-west-1.amazonaws.com"

    invoke-static {v0, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 274
    return-object v1
.end method

.method private static updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "region"    # Lcom/amazonaws/regions/Region;
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "http"    # Z
    .param p4, "https"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v2

    .line 281
    .local v2, "serviceEndpoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpSupport()Ljava/util/Map;

    move-result-object v0

    .line 282
    .local v0, "httpSupport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpsSupport()Ljava/util/Map;

    move-result-object v1

    .line 284
    .local v1, "httpsSupport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method
