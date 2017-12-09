.class public Lcom/amazonaws/services/s3/model/CopyPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyPartRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private firstByte:Ljava/lang/Long;

.field private lastByte:Ljava/lang/Long;

.field private final matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private final nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:I

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private sourceVersionId:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getFirstByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
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
    .line 528
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
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
    .line 595
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    return v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 835
    return-void
.end method

.method public setFirstByte(Ljava/lang/Long;)V
    .locals 0
    .param p1, "firstByte"    # Ljava/lang/Long;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    .line 468
    return-void
.end method

.method public setLastByte(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastByte"    # Ljava/lang/Long;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    .line 498
    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
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
    .line 550
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 750
    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
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
    .line 616
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 617
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 618
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    .line 196
    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 798
    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 683
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationBucketName(Ljava/lang/String;)V

    .line 408
    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationKey(Ljava/lang/String;)V

    .line 447
    return-object p0
.end method

.method public withDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 849
    return-object p0
.end method

.method public withFirstByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "firstByte"    # Ljava/lang/Long;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    .line 481
    return-object p0
.end method

.method public withLastByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "lastByte"    # Ljava/lang/Long;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    .line 508
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 775
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    .line 211
    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public withSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 812
    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 708
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    .line 169
    return-object p0
.end method
