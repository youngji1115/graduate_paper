.class public Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/S3ClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accelerateModeEnabled:Z

.field private pathStyleAccess:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->pathStyleAccess:Z

    .line 41
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->accelerateModeEnabled:Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/s3/S3ClientOptions$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazonaws/services/s3/S3ClientOptions;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->pathStyleAccess:Z

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->accelerateModeEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v0
.end method

.method public setAccelerateModeEnabled(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 0
    .param p1, "accelerateModeEnabled"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->accelerateModeEnabled:Z

    .line 89
    return-object p0
.end method

.method public setPathStyleAccess(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 0
    .param p1, "pathStyleAccess"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->pathStyleAccess:Z

    .line 72
    return-object p0
.end method
