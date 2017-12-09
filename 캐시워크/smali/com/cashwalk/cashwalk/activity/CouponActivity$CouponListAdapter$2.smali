.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;
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
    .line 213
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;->val$this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/Coupon;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)I
    .locals 1
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    .prologue
    .line 216
    iget-boolean v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-nez v0, :cond_2

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_2
    iget-boolean v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-nez v0, :cond_3

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 213
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;->compare(Lcom/cashwalk/cashwalk/util/network/model/Coupon;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)I

    move-result v0

    return v0
.end method
