.class public Lcom/amazonaws/services/s3/model/PartETag;
.super Ljava/lang/Object;
.source "PartETag.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "partNumber"    # I
    .param p2, "eTag"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 39
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 58
    return-void
.end method

.method public withETag(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PartETag;
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/PartETag;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 69
    return-object p0
.end method
