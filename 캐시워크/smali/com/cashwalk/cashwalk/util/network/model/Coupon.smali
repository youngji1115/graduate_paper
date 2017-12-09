.class public Lcom/cashwalk/cashwalk/util/network/model/Coupon;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ITEM:I = 0x0

.field public static final TYPE_SECTION:I = 0x1

.field private static final serialVersionUID:J = -0x53481a8121f2b760L


# instance fields
.field public brand:Ljava/lang/String;

.field public date:Lorg/joda/time/DateTime;

.field public delay:I

.field public description:Ljava/lang/String;

.field public expire:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public prizeId:Ljava/lang/String;

.field public remain:I

.field public status:I

.field public title:Ljava/lang/String;

.field public type:I

.field public used:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->type:I

    .line 22
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->status:I

    .line 23
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->delay:I

    .line 24
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->remain:I

    .line 25
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    return-void
.end method
