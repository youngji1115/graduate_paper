.class public Lcom/amazonaws/services/s3/model/BucketPolicy;
.super Ljava/lang/Object;
.source "BucketPolicy.java"


# instance fields
.field private policyText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->policyText:Ljava/lang/String;

    return-object v0
.end method

.method public setPolicyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyText"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->policyText:Ljava/lang/String;

    .line 64
    return-void
.end method
