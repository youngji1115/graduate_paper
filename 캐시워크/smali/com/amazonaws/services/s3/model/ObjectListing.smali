.class public Lcom/amazonaws/services/s3/model/ObjectListing;
.super Ljava/lang/Object;
.source "ObjectListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setCommonPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodingType"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->encodingType:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0
    .param p1, "maxKeys"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    .line 282
    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextMarker"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "isTruncated"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    .line 337
    return-void
.end method
