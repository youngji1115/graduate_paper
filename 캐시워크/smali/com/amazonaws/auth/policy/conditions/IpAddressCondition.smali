.class public Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "IpAddressCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    .param p2, "ipAddressRange"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 91
    const-string v0, "aws:SourceIp"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddressRange"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V

    .line 73
    return-void
.end method
