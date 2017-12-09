.class public Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.super Ljava/lang/Object;
.source "BucketVersioningConfiguration.java"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "Enabled"

.field public static final OFF:Ljava/lang/String; = "Off"

.field public static final SUSPENDED:Ljava/lang/String; = "Suspended"


# instance fields
.field private isMfaDeleteEnabled:Ljava/lang/Boolean;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    .line 101
    const-string v0, "Off"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isMfaDeleteEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMfaDeleteEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mfaDeleteEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled:Ljava/lang/Boolean;

    .line 217
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->status:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public withMfaDeleteEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 0
    .param p1, "mfaDeleteEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setMfaDeleteEnabled(Ljava/lang/Boolean;)V

    .line 241
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->setStatus(Ljava/lang/String;)V

    .line 171
    return-object p0
.end method
