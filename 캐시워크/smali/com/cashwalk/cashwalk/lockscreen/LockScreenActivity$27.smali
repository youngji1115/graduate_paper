.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)V

    .line 1018
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 1019
    return-void
.end method
