.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;
.super Ljava/lang/Object;
.source "CouponActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cashwalk/cashwalk/util/network/model/Coupon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

.field final synthetic val$this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/activity/CouponActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;->val$this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/Coupon;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)I
    .locals 2
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    .prologue
    .line 210
    iget-object v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->date:Lorg/joda/time/DateTime;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->date:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 207
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;->compare(Lcom/cashwalk/cashwalk/util/network/model/Coupon;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)I

    move-result v0

    return v0
.end method
