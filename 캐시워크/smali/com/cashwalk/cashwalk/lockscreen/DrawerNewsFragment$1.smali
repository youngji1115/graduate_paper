.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DrawerNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v0, "TOTAL"

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->refreshNewsOnMsg()V

    .line 74
    :cond_0
    return-void
.end method
