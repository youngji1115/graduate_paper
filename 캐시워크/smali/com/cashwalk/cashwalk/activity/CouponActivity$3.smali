.class Lcom/cashwalk/cashwalk/activity/CouponActivity$3;
.super Ljava/lang/Object;
.source "CouponActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    return-void
.end method
