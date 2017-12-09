.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public onFacebookAdCreated(Lcom/facebook/ads/AdView;)V
    .locals 1
    .param p1, "facebookBanner"    # Lcom/facebook/ads/AdView;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$902(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;

    .line 221
    return-void
.end method

.method public onLoaded(I)V
    .locals 2
    .param p1, "adType"    # I

    .prologue
    const/4 v1, 0x4

    .line 207
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    return-void
.end method
