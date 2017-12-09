.class public Lcom/amazonaws/services/s3/model/EncryptionMaterials;
.super Ljava/lang/Object;
.source "EncryptionMaterials.java"


# instance fields
.field private final keyPair:Ljava/security/KeyPair;

.field private final symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 1
    .param p1, "keyPair"    # Ljava/security/KeyPair;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .param p2, "symmetricKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1
    .param p1, "symmetricKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getAccessor()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public getMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
