.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;
.super Ljava/lang/Object;
.source "CouponActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "item"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method
