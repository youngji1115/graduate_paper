.class final Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;
.super Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.source "S3KeyWrapScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    return-void
.end method


# virtual methods
.method getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "NONE"

    return-object v0
.end method
