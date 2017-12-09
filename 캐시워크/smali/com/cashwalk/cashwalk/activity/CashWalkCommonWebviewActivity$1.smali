.class Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CashWalkCommonWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->invalidateOptionsMenu()V

    .line 81
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 104
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 91
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v0, p2}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
