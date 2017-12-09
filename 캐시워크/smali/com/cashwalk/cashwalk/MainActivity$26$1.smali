.class Lcom/cashwalk/cashwalk/MainActivity$26$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/MainActivity$26;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$26;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/MainActivity$26;

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v2, 0x7f050016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1438
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1439
    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$26$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1477
    return-void
.end method
