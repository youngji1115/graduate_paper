.class public Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CashwalkAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;
    }
.end annotation


# instance fields
.field private mURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mURL:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private setLayout()V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f1001b2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mWebView:Landroid/webkit/WebView;

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, "getUrl":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mURL:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->setLayout()V

    .line 34
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;-><init>(Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://www.cashwalk.io"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
