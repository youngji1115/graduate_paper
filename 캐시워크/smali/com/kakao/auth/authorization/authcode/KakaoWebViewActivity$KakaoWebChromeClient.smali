.class Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "KakaoWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KakaoWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
    .param p2, "x1"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    const-string v0, "KakaoAccountWebView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 322
    const-string v0, "KakaoAccountWebView"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 322
    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    return v5
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$1;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const v9, 0x104000a

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "msg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 282
    .local v4, "positive":Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, "negative":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v5, "positive"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    const-string v5, "negative"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, p3

    .line 296
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v5, v9}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v5, v7}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;

    invoke-direct {v6, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 301
    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;

    invoke-direct {v6, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 307
    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 313
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 316
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, p3

    .line 296
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v5, v9}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v5, v7}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;

    invoke-direct {v6, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 301
    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;

    invoke-direct {v6, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 307
    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 313
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v1, p3

    .line 296
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v6, v9}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-virtual {v6, v7}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_8
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;

    invoke-direct {v7, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 301
    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;

    invoke-direct {v7, p0, p4}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$2;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V

    .line 307
    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 313
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    throw v5
.end method
