.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->onDrawerStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 392
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    .line 393
    return-void
.end method
