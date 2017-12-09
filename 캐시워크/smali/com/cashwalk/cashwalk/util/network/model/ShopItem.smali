.class public Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
.super Ljava/lang/Object;
.source "ShopItem.java"


# static fields
.field public static final TYPE_ITEM:I = 0x0

.field public static final TYPE_SECTION:I = 0x1


# instance fields
.field public brand:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public delay:I

.field public description:Ljava/lang/String;

.field public expireAt:Lorg/joda/time/DateTime;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public price:I

.field public title:Ljava/lang/String;

.field public type:I

.field public validity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->type:I

    .line 17
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->delay:I

    return-void
.end method
