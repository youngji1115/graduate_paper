.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCELERATE_MODE_ENABLED:Z

.field public static final DEFAULT_PATH_STYLE_ACCESS:Z


# instance fields
.field private accelerateModeEnabled:Z

.field private pathStyleAccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .param p1, "other"    # Lcom/amazonaws/services/s3/S3ClientOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 108
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 109
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "pathStyleAccess"    # Z
    .param p2, "accelerateModeEnabled"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 113
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 114
    return-void
.end method

.method synthetic constructor <init>(ZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/amazonaws/services/s3/S3ClientOptions$1;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZ)V

    return-void
.end method

.method public static builder()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v0
.end method


# virtual methods
.method public isAccelerateModeEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    return v0
.end method

.method public isPathStyleAccess()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    return v0
.end method

.method public setPathStyleAccess(Z)V
    .locals 0
    .param p1, "pathStyleAccess"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 177
    return-void
.end method

.method public withPathStyleAccess(Z)Lcom/amazonaws/services/s3/S3ClientOptions;
    .locals 0
    .param p1, "pathStyleAccess"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;->setPathStyleAccess(Z)V

    .line 202
    return-object p0
.end method
