.class Lcom/cashwalk/cashwalk/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

.field final synthetic val$progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SplashActivity;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SplashActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$1;->val$progress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$1;->val$progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    return-void
.end method
