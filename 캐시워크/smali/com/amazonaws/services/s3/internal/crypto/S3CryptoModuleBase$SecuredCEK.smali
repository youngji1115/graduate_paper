.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;
.super Ljava/lang/Object;
.source "S3CryptoModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuredCEK"
.end annotation


# instance fields
.field final encrypted:[B

.field final keyWrapAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "encryptedKey"    # [B
    .param p2, "keyWrapAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;->encrypted:[B

    .line 273
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    .line 274
    return-void
.end method
