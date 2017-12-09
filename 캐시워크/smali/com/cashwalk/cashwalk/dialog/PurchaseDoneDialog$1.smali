.class Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;
.super Ljava/lang/Object;
.source "PurchaseDoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 63
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    const v5, 0x7f0901b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "appPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->dismiss()V

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;->val$context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
