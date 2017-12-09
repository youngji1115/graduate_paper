.class Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;
.super Ljava/lang/Object;
.source "CouponDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 133
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->access$200(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    return-void
.end method
