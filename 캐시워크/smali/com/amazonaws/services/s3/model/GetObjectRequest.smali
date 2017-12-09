.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private generalProgressListener:Lcom/amazonaws/event/ProgressListener;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

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

.field private range:[J

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 139
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRequesterPays(Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isRequesterPays"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->key:Ljava/lang/String;

    .line 161
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    .line 162
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->key:Ljava/lang/String;

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
    .line 422
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

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
    .line 478
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->unwrap()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    .line 688
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRange()[J
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0
    .param p1, "generalProgressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 718
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->key:Ljava/lang/String;

    .line 224
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
    .line 439
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 440
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 605
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
    .line 495
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 496
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 673
    return-void
.end method

.method public setRange(JJ)V
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 377
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    .line 380
    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0
    .param p1, "isRequesterPays"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    .line 777
    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 645
    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 799
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 551
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->versionId:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 741
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 239
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 625
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 707
    return-object p0
.end method

.method public withRange(JJ)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 406
    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 657
    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 813
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 571
    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    .line 324
    return-object p0
.end method
