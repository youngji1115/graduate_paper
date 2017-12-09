.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;
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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v2, 0x7f090200

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    return-void
.end method
