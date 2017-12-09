.class public Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
.super Ljava/lang/Object;
.source "DeleteObjectsResponse.java"


# instance fields
.field private deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "deletedObjects":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public getDeletedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    return-object v0
.end method

.method public setDeletedObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "deletedObjects":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->deletedObjects:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->errors:Ljava/util/List;

    .line 64
    return-void
.end method
