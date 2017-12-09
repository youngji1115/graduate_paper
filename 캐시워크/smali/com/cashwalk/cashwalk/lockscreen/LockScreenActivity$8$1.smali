.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8$1;
.super Landroid/os/Handler;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    .line 418
    return-void
.end method
