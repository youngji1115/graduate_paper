.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;,
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
    }
.end annotation


# static fields
.field private static final BC_PROVIDER_FQCN:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"

.field static final BOUNCY_CASTLE_PROVIDER:Ljava/lang/String; = "BC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBouncyCastle()V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    const-string v3, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    .line 40
    .local v2, "provider":Ljava/security/Provider;
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2    # "provider":Ljava/security/Provider;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    const-class v3, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    const-string v4, "Bouncy Castle not available"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAesGcmAvailable()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return v0
.end method

.method public static isBouncyCastleAvailable()Z
    .locals 1

    .prologue
    .line 32
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRsaKeyWrapAvailable()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->isAvailable:Z

    return v0
.end method

.method static recheck()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->recheckAesGcmAvailablility()V

    .line 53
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->recheckRsaKeyWrapAvailablility()V

    .line 54
    return-void
.end method

.method private static recheckAesGcmAvailablility()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->recheck()Z

    .line 62
    return-void
.end method

.method private static recheckRsaKeyWrapAvailablility()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->recheck()Z

    .line 70
    return-void
.end method
