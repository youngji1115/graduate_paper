.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->refreshAppListFromDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const-class v3, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "type"

    const-string v3, "gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->startActivity(Landroid/content/Intent;)V

    .line 783
    return-void
.end method
