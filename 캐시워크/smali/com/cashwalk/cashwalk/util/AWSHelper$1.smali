.class final Lcom/cashwalk/cashwalk/util/AWSHelper$1;
.super Ljava/lang/Object;
.source "AWSHelper.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_initS3Client()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "AKIAIPNYM4H7H7V2VJLQ"

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "IxgCwVjBPngZGT2vHog8lmBpvmRgcDo2m7W/1DCD"

    return-object v0
.end method
