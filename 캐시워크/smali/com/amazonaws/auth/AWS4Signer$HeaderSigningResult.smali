.class public Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;
.super Ljava/lang/Object;
.source "AWS4Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/AWS4Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderSigningResult"
.end annotation


# instance fields
.field private final dateTime:Ljava/lang/String;

.field private final kSigning:[B

.field private final scope:Ljava/lang/String;

.field private final signature:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "kSigning"    # [B
    .param p4, "signature"    # [B

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->dateTime:Ljava/lang/String;

    .line 378
    iput-object p2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->scope:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    .line 380
    iput-object p4, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    .line 381
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKSigning()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 393
    .local v0, "kSigningCopy":[B
    iget-object v1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    iget-object v2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 399
    .local v0, "signatureCopy":[B
    iget-object v1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    iget-object v2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    return-object v0
.end method
