.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "startMyFriendList":Landroid/content/Intent;
    const-string v1, "postion"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "ref"

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->finish()V

    .line 270
    return v3
.end method
