.class public Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;
.super Ljava/lang/Object;
.source "StaticEncryptionMaterialsProvider.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;


# instance fields
.field private final materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 0
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 30
    return-void
.end method


# virtual methods
.method public getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object v0
.end method

.method public getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    .prologue
    .local p1, "materialDescIn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 44
    iget-object v6, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 45
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v2

    .line 46
    .local v2, "materialDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    iget-object v6, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getAccessor()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;

    move-result-object v0

    .line 51
    .local v0, "accessor":Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    .line 54
    .local v1, "accessorMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    if-nez v1, :cond_0

    .line 65
    .end local v1    # "accessorMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    move v4, v5

    .line 66
    .local v4, "noMaterialDescIn":Z
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    move v3, v5

    .line 67
    .local v3, "noMaterialDesc":Z
    :cond_5
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :goto_2
    move-object v1, v5

    goto :goto_0

    .end local v3    # "noMaterialDesc":Z
    .end local v4    # "noMaterialDescIn":Z
    :cond_6
    move v4, v3

    .line 65
    goto :goto_1

    .line 67
    .restart local v3    # "noMaterialDesc":Z
    .restart local v4    # "noMaterialDescIn":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
