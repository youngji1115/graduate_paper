.class Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;
.super Landroid/webkit/WebViewClient;
.source "CashwalkAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;->this$0:Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;-><init>(Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;->this$0:Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView$WebViewClientClass;->this$0:Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ad/CashwalkAdWebView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 67
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
