.class public abstract Lcom/amazonaws/services/s3/internal/SSEResultBase;
.super Ljava/lang/Object;
.source "SSEResultBase.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private sseAlgorithm:Ljava/lang/String;

.field private sseCustomerAlgorithm:Ljava/lang/String;

.field private sseCustomerKeyMD5:Ljava/lang/String;

.field private sseKMSKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerKeyMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEKMSKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseKMSKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerSideEncryption()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerAlgorithm:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerKeyMD5:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSSEKMSKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kmsKeyId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseKMSKeyId:Ljava/lang/String;

    .line 62
    return-void
.end method
