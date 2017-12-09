.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private file:Ljava/io/File;

.field private generalProgressListener:Lcom/amazonaws/event/ProgressListener;

.field private inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 218
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 4

    .prologue
    .line 820
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 821
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 822
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 823
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 824
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 825
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 826
    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    .line 827
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 828
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 820
    return-object v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 826
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->clone()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->unwrap()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 593
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 558
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 444
    return-void
.end method

.method public setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0
    .param p1, "generalProgressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 788
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 640
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 507
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 742
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 743
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 713
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 604
    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 268
    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 574
    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 464
    return-object p0
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "generalProgressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 811
    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 662
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 305
    return-object p0
.end method

.method public withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 531
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 777
    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 727
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 411
    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 369
    return-object p0
.end method
