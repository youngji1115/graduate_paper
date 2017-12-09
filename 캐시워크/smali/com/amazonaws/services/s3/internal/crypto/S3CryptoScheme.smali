.class final Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.super Ljava/lang/Object;
.source "S3CryptoScheme.java"


# static fields
.field static final AES:Ljava/lang/String; = "AES"

.field static final RSA:Ljava/lang/String; = "RSA"

.field private static final srand:Ljava/security/SecureRandom;


# instance fields
.field private final contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private final kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->srand:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V
    .locals 1
    .param p1, "contentCryptoScheme"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V
    .locals 0
    .param p1, "contentCryptoScheme"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .param p2, "kwScheme"    # Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 44
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    .line 45
    return-void
.end method

.method static from(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .locals 3
    .param p0, "mode"    # Lcom/amazonaws/services/s3/model/CryptoMode;

    .prologue
    .line 67
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 69
    :pswitch_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->NONE:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    .line 73
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isAesGcm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cipherAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->srand:Ljava/security/SecureRandom;

    return-object v0
.end method
