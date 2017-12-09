.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8$1;
.super Landroid/os/Handler;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    .line 434
    return-void
.end method
