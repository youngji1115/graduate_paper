.class public Lcom/cashwalk/cashwalk/activity/WebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebViewActivity.java"


# instance fields
.field private adView:Landroid/widget/FrameLayout;

.field private close:Landroid/widget/ImageButton;

.field private curUrl:Ljava/lang/String;

.field private daum:Landroid/widget/LinearLayout;

.field private enterUrl:Ljava/lang/String;

.field private fbAdView:Lcom/facebook/ads/AdView;

.field private google:Landroid/widget/LinearLayout;

.field private naver:Landroid/widget/LinearLayout;

.field private pref:Landroid/content/SharedPreferences;

.field private progressBar:Landroid/widget/ProgressBar;

.field private share:Landroid/widget/TextView;

.field private suggest:Landroid/widget/LinearLayout;

.field private urlEdit:Landroid/widget/EditText;

.field private webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->goUrl()V

    return-void
.end method

.method static synthetic access$1002(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;
    .param p1, "x1"    # Lcom/facebook/ads/AdView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->fbAdView:Lcom/facebook/ads/AdView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->share:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->suggest:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->setUrl()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Lcom/cashwalk/cashwalk/util/ObservableWebView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->adView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private goUrl()V
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->suggest:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->loadUrl(Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 302
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->requestFocus()Z

    .line 306
    :goto_1
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->enterUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initAds()V
    .locals 6

    .prologue
    .line 345
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PREFERENCE_AD_PRIORITY"

    const-string v4, "ADMOB"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "adPriority":Ljava/lang/String;
    const/4 v1, 0x2

    .line 348
    .local v1, "priority":I
    if-eqz v0, :cond_0

    const-string v2, "FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->adView:Landroid/widget/FrameLayout;

    const v3, 0x7f090151

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0900a5

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$12;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-static {v2, v3, v4, v1, v5}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V

    .line 374
    return-void
.end method

.method private setUrl()V
    .locals 4

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "urlText":Ljava/lang/String;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    const-string v2, "http://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 318
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_2
    return-void

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    const-string v2, "https://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->goBack()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "news_webview"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->pref:Landroid/content/SharedPreferences;

    .line 71
    const v1, 0x7f10000f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/ObservableWebView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    .line 72
    const v1, 0x7f1002fb

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->adView:Landroid/widget/FrameLayout;

    .line 73
    const v1, 0x7f1002f8

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    .line 74
    const v1, 0x7f1002f9

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->share:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f1002f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->close:Landroid/widget/ImageButton;

    .line 76
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 78
    const v1, 0x7f1002fc

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->suggest:Landroid/widget/LinearLayout;

    .line 79
    const v1, 0x7f1002fd

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->naver:Landroid/widget/LinearLayout;

    .line 80
    const v1, 0x7f1002fe

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->daum:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f10006d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->google:Landroid/widget/LinearLayout;

    .line 83
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->naver:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->daum:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->google:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :try_start_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->close:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->share:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->urlEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 168
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->requestFocus()Z

    .line 170
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 176
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 220
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 244
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$10;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->setOnScrollChangedCallback(Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;)V

    .line 260
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->webView:Lcom/cashwalk/cashwalk/util/ObservableWebView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->curUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->loadUrl(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->setUrl()V

    .line 285
    :goto_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->initAds()V

    .line 286
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->finish()V

    goto/16 :goto_1

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->finish()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->fbAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->fbAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 341
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 342
    return-void
.end method
