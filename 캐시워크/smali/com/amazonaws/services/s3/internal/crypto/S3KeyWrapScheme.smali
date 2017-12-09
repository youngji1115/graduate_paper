.class Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.super Ljava/lang/Object;
.source "S3KeyWrapScheme.java"


# static fields
.field public static final AESWrap:Ljava/lang/String; = "AESWrap"

.field static final NONE:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

.field public static final RSA_ECB_OAEPWithSHA256AndMGF1Padding:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->NONE:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "AESWrap"

    .line 44
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->isRsaKeyWrapAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
