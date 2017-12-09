.class public Lcom/amazonaws/services/s3/model/ListPartsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListPartsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private partNumberMarker:Ljava/lang/Integer;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodingType"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->encodingType:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMaxParts(I)V
    .locals 1
    .param p1, "maxParts"    # I

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    .line 199
    return-void
.end method

.method public setPartNumberMarker(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "partNumberMarker"    # Ljava/lang/Integer;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    .line 235
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->bucketName:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "encodingType"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->setEncodingType(Ljava/lang/String;)V

    .line 291
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->key:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withMaxParts(I)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 1
    .param p1, "maxParts"    # I

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    .line 212
    return-object p0
.end method

.method public withPartNumberMarker(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "partNumberMarker"    # Ljava/lang/Integer;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    .line 248
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    .line 176
    return-object p0
.end method
