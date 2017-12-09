.class public Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CustomWebChromeClient.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->activity:Landroid/app/Activity;

    .line 17
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 21
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;-><init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 29
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    new-instance v1, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$2;

    invoke-direct {v1, p0, p4}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$2;-><init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    iget-object v1, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 42
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 47
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$4;

    invoke-direct {v3, p0, p4}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$4;-><init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$3;

    invoke-direct {v3, p0, p4}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$3;-><init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 61
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    new-instance v1, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;

    invoke-direct {v1, p0, p4}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;-><init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    iget-object v1, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 75
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
