.class public Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;
.super Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;
.source "RepeatableCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream",
        "<",
        "Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->newCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Ljava/io/FilterInputStream;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private static newCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;
    .locals 2
    .param p0, "unencryptedDataStream"    # Ljava/io/InputStream;
    .param p1, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 75
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method protected createCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;
    .locals 1
    .param p1, "unencryptedDataStream"    # Ljava/io/InputStream;
    .param p2, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 70
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->newCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCipherInputStream(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/FilterInputStream;
    .locals 1

    .prologue
    .line 46
    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;->createCipherInputStream(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Ljava/io/FilterInputStream;

    move-result-object v0

    return-object v0
.end method
