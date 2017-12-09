.class public Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;
.super Ljava/lang/Object;
.source "ShopCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->brandList:Ljava/util/ArrayList;

    return-void
.end method
