.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/WebViewActivity;->initAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 367
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$900(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 356
    return-void
.end method

.method public onFacebookAdCreated(Lcom/facebook/ads/AdView;)V
    .locals 1
    .param p1, "facebookBanner"    # Lcom/facebook/ads/AdView;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$1002(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;

    .line 372
    return-void
.end method

.method public onLoaded(I)V
    .locals 3
    .param p1, "adType"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$900(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$900(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 362
    return-void
.end method
