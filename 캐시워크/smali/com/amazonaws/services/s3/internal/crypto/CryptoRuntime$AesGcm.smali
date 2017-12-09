.class final Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesGcm"
.end annotation


# static fields
.field static volatile isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()Z
    .locals 3

    .prologue
    .line 81
    :try_start_0
    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 82
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    .line 81
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static recheck()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return v0
.end method
