.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7$1;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;->onDrawerStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->startActivity(Landroid/content/Intent;)V

    .line 407
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->overridePendingTransition(II)V

    .line 408
    return-void
.end method
