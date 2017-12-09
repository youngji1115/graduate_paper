.class public Lcom/amazonaws/services/s3/model/CopyObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private matchingETagConstraints:Ljava/util/List;
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

.field private newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectLocation:Ljava/lang/String;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private sourceVersionId:Ljava/lang/String;

.field private storageClass:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "sourceVersionId"    # Ljava/lang/String;
    .param p4, "destinationBucketName"    # Ljava/lang/String;
    .param p5, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

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
    .line 667
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

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
    .line 733
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 588
    return-void
.end method

.method public setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedACL"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 556
    return-void
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 1002
    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
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
    .line 689
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 690
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 887
    return-void
.end method

.method public setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "newObjectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 627
    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
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
    .line 754
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 755
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 923
    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 964
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 965
    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 820
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 599
    return-object p0
.end method

.method public withCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "cannedACL"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 568
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 569
    return-object p0
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationBucketName(Ljava/lang/String;)V

    .line 387
    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationKey(Ljava/lang/String;)V

    .line 426
    return-object p0
.end method

.method public withDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1016
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 912
    return-object p0
.end method

.method public withNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "newObjectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 643
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 942
    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceBucketName(Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceKey(Ljava/lang/String;)V

    .line 263
    return-object p0
.end method

.method public withSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 979
    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceVersionId(Ljava/lang/String;)V

    .line 347
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 530
    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 490
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 845
    return-object p0
.end method
