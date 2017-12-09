.class public Lcom/esafirm/imagepicker/model/ImageFactory;
.super Ljava/lang/Object;
.source "ImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static singleListFromPath(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .local v0, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    new-instance v1, Lcom/esafirm/imagepicker/model/Image;

    const-wide/16 v2, 0x0

    invoke-static {p0}, Lcom/esafirm/imagepicker/helper/ImagePickerUtils;->getNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/esafirm/imagepicker/model/Image;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-object v0
.end method
