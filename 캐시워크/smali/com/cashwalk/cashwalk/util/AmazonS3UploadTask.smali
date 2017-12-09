.class public Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;
.super Landroid/os/AsyncTask;
.source "AmazonS3UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bucketname:Ljava/lang/String;

.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private filename:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;Landroid/os/Handler;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bucketname"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->path:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->filename:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 30
    iput-object p5, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->handler:Landroid/os/Handler;

    .line 32
    if-nez p2, :cond_0

    .line 33
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_BUCKET_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->bucketname:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->bucketname:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->path:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lcom/amazonaws/services/s3/AmazonS3Client;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    invoke-direct {v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 48
    .local v2, "s3c":Lcom/amazonaws/services/s3/AmazonS3Client;
    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->bucketname:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    invoke-interface {v5}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->path:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v3, "s3req":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 50
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 51
    sget-object v4, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 52
    new-instance v4, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;-><init>(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "s3c":Lcom/amazonaws/services/s3/AmazonS3Client;
    .end local v3    # "s3req":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    :goto_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
