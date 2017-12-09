.class public Lcom/esafirm/imagepicker/model/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field private folderName:Ljava/lang/String;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/esafirm/imagepicker/model/Folder;->folderName:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/model/Folder;->images:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Folder;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Folder;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/esafirm/imagepicker/model/Folder;->folderName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    iput-object p1, p0, Lcom/esafirm/imagepicker/model/Folder;->images:Ljava/util/ArrayList;

    .line 32
    return-void
.end method
