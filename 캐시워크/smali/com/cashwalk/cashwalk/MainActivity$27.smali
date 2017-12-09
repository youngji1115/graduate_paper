.class Lcom/cashwalk/cashwalk/MainActivity$27;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 1492
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1494
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$2800(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$2900(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2702(Lcom/cashwalk/cashwalk/MainActivity;I)I

    .line 1496
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$2800(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$2800(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1499
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$3000(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$3000(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$3000(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2100(Lcom/cashwalk/cashwalk/MainActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$27;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$3100(Lcom/cashwalk/cashwalk/MainActivity;)V

    goto :goto_0

    .line 1492
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
