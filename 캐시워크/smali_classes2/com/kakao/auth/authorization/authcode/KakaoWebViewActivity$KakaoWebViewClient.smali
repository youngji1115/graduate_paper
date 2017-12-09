.class Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "KakaoWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KakaoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
    .param p2, "x1"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$500(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;I)V

    .line 258
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$500(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;I)V

    .line 252
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$500(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;I)V

    .line 234
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    new-instance v1, Lcom/kakao/auth/exception/KakaoWebviewException;

    invoke-direct {v1, p2, p3, p4}, Lcom/kakao/auth/exception/KakaoWebviewException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$600(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Ljava/lang/Throwable;)V

    .line 235
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->finish()V

    .line 236
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 241
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 242
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$500(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;I)V

    .line 243
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    new-instance v1, Lcom/kakao/auth/exception/KakaoWebviewException;

    const/16 v2, -0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/kakao/auth/exception/KakaoWebviewException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$600(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->finish()V

    .line 245
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 212
    const-string v1, "kakao"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "://oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "://ageauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-static {v1, p2}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$200(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->finish()V

    .line 226
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_1
    sget-object v1, Lcom/kakao/network/ServerProtocol;->AUTH_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/kakao/network/ServerProtocol;->AGE_AUTH_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-static {v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$400(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-static {v2}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$300(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 221
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
