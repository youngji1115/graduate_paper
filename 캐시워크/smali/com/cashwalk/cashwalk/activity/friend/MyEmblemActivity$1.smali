.class Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;
.super Ljava/lang/Object;
.source "MyEmblemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;I)I

    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    const-class v3, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->access$008(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)I

    goto :goto_0
.end method
