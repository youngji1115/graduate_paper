.class public Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
.super Landroid/app/Activity;
.source "KakaoWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;,
        Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;
    }
.end annotation


# static fields
.field public static final KEY_EXCEPTION:Ljava/lang/String; = "key.exception"

.field public static final KEY_EXTRA_HEADERS:Ljava/lang/String; = "key.extra.headers"

.field public static final KEY_REDIRECT_URL:Ljava/lang/String; = "key.redirect.url"

.field public static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "key.result.receiver"

.field public static final KEY_URL:Ljava/lang/String; = "key.url"

.field public static final KEY_USE_SMS_RECEIVER:Ljava/lang/String; = "key.use.sms.receiver"

.field public static final KEY_USE_WEBVIEW_TIMERS:Ljava/lang/String; = "key.use.webview.timers"

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private resultReceiver:Landroid/os/ResultReceiver;

.field private url:Ljava/lang/String;

.field private useSmsReceiver:Z

.field private useWebViewTimers:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->sendSuccessToListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->setProgressBarVisibility(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method private initUi()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 184
    sget v0, Lcom/kakao/auth/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 185
    sget v0, Lcom/kakao/auth/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 187
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebViewClient;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;

    invoke-direct {v1, p0, v3}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 192
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/kakao/auth/ISessionConfig;->isSaveFormData()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 194
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 196
    invoke-direct {p0, v2}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->setProgressBarVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v2, "key.url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->url:Ljava/lang/String;

    .line 93
    const-string v2, "key.use.webview.timers"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->useWebViewTimers:Z

    .line 94
    const-string v2, "key.use.sms.receiver"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->useSmsReceiver:Z

    .line 95
    const-string v2, "key.result.receiver"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->resultReceiver:Landroid/os/ResultReceiver;

    .line 96
    const-string v2, "key.extra.headers"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    .local v0, "extraHeaders":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    const-string v3, "KA"

    invoke-static {}, Lcom/kakao/util/helper/SystemInfo;->getKAHeader()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private registerSmsReceiverIfNeeded()V
    .locals 3

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->useSmsReceiver:Z

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-object v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    if-nez v1, :cond_0

    .line 343
    const-string v1, "registerSmsReceiver"

    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 345
    new-instance v1, Lcom/kakao/auth/receiver/SmsReceiver;

    new-instance v2, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;-><init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V

    invoke-direct {v1, v2}, Lcom/kakao/auth/receiver/SmsReceiver;-><init>(Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;)V

    sput-object v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 360
    sget-object v1, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendCancelToListener()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/kakao/util/exception/KakaoException;

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "pressed back button or cancel button during requesting auth code."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_0

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    instance-of v2, p1, Lcom/kakao/util/exception/KakaoException;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 172
    check-cast v1, Lcom/kakao/util/exception/KakaoException;

    .line 176
    .local v1, "kakaoException":Lcom/kakao/util/exception/KakaoException;
    :goto_0
    const-string v2, "key.exception"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 177
    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->resultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 179
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "kakaoException":Lcom/kakao/util/exception/KakaoException;
    :cond_0
    return-void

    .line 174
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Lcom/kakao/util/exception/KakaoException;

    invoke-direct {v1, p1}, Lcom/kakao/util/exception/KakaoException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "kakaoException":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0
.end method

.method private sendSuccessToListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key.redirect.url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->resultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 165
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setProgressBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    :cond_0
    return-void
.end method

.method private unRegisterSmsReceiverIfNeeded()V
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 366
    :try_start_0
    const-string v0, "unregisterSmsReceiver"

    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 367
    sget-object v0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->smsReceiver:Lcom/kakao/auth/receiver/SmsReceiver;

    .line 372
    :cond_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 146
    invoke-virtual {p0, v0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->overridePendingTransition(II)V

    .line 147
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->sendCancelToListener()V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->requestWindowFeature(I)Z

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->parseIntent(Landroid/content/Intent;)V

    .line 86
    sget v0, Lcom/kakao/auth/R$layout;->activity_kakao_webview:I

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->initUi()V

    .line 88
    invoke-direct {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->registerSmsReceiverIfNeeded()V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    invoke-direct {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->unRegisterSmsReceiverIfNeeded()V

    .line 153
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->parseIntent(Landroid/content/Intent;)V

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->setProgressBarVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    iget-boolean v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->useWebViewTimers:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-boolean v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->useWebViewTimers:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 121
    :cond_0
    return-void
.end method
