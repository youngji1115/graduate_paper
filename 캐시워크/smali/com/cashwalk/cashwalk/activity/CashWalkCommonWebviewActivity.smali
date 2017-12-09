.class public Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CashWalkCommonWebviewActivity.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mWebview:Landroid/webkit/WebView;

.field private m_downX:F

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->setScheme(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->m_downX:F

    return v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->m_downX:F

    return p1
.end method

.method private initWebView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 110
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 116
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private setScheme(Ljava/lang/String;)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 153
    if-eqz p1, :cond_c

    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 155
    :try_start_0
    const-string v10, "intent:"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    const/4 v10, 0x1

    :try_start_1
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 158
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, "existPackage":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    :goto_0
    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 242
    .end local v1    # "existPackage":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return v8

    .line 162
    .restart local v1    # "existPackage":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, "marketIntent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    .end local v1    # "existPackage":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v8, v9

    .line 234
    goto :goto_1

    .line 171
    :cond_3
    const-string v10, "market://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    if-eqz v10, :cond_5

    .line 173
    const/4 v10, 0x1

    :try_start_3
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 174
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_4
    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 179
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 235
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    iget-object v8, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v8, v9

    .line 238
    goto :goto_1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    const-string v10, "android-app://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 184
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.instagram.android"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v5

    .line 185
    .local v5, "isInsta":Landroid/content/Intent;
    if-eqz v5, :cond_7

    .line 187
    const/4 v10, 0x1

    :try_start_6
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 188
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_6

    .line 189
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_6
    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 193
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 194
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_7
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 197
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_7
    const-string/jumbo v10, "\uc778\uc2a4\ud0c0\uadf8\ub7a8\uc774 \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 198
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "market://details?id=com.instagram.android"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 203
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "isInsta":Landroid/content/Intent;
    :cond_8
    const-string v10, "fb://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 204
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.facebook.katana"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v4

    .line 205
    .local v4, "isFacebook":Landroid/content/Intent;
    if-eqz v4, :cond_a

    .line 207
    const/4 v10, 0x1

    :try_start_8
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 208
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_9

    .line 209
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    :cond_9
    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 213
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    const-string/jumbo v10, "\ud398\uc774\uc2a4\ubd81\uc774 \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 219
    .local v7, "uri":Landroid/net/Uri;
    const-string v10, "href"

    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "facebookWebUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 221
    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v10, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 225
    .end local v2    # "facebookWebUrl":Ljava/lang/String;
    .end local v4    # "isFacebook":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_b
    const-string v10, "cashwalk://heart"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 228
    const-string v10, "cashwalk://main"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_1

    .line 241
    :cond_c
    iget-object v8, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v8, v9

    .line 242
    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f1001b4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    const v1, 0x7f1001b3

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mWebview:Landroid/webkit/WebView;

    .line 43
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "getData":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->mURL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_4
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->initWebView()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->finish()V

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
