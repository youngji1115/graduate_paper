.class public Lcom/cashwalk/cashwalk/activity/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

.field private fbCbm:Lcom/facebook/CallbackManager;

.field private fbLogin:Lcom/facebook/login/widget/LoginButton;

.field private fbToken:Ljava/lang/String;

.field private justGo:Landroid/widget/TextView;

.field private justgo_facebook:Lcom/facebook/login/widget/LoginButton;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_justgo_info:Landroid/widget/RelativeLayout;

.field private tv_skip_justogo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbToken:Ljava/lang/String;

    .line 520
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/facebook/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;
    .param p1, "x1"    # Lcom/facebook/Profile;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->onFBLoginSuccess(Lcom/facebook/Profile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->login(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->startMain()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->startSignUp(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->syncLocalDB()V

    return-void
.end method

.method private connectUser(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 3
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v0

    .line 264
    .local v0, "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    if-eqz v0, :cond_0

    .line 265
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iput-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 266
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    iput-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 269
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    invoke-static {p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 341
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 344
    return-void
.end method

.method private justGo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    const v0, 0x7f1001eb

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justgo_facebook:Lcom/facebook/login/widget/LoginButton;

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justgo_facebook:Lcom/facebook/login/widget/LoginButton;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "public_profile"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "user_friends"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justgo_facebook:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbCbm:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/widget/LoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 200
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->tv_skip_justogo:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method private login(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 5
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none_login_user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->connectUser(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 467
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "REFERRER"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "referrer":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    iput-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->recommender:Ljava/lang/String;

    .line 357
    :cond_1
    new-instance v2, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-static {p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->createUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 466
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private onFBLoginSuccess(Lcom/facebook/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/facebook/Profile;

    .prologue
    const/16 v2, 0x60

    .line 235
    if-eqz p1, :cond_0

    .line 236
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 237
    .local v0, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    invoke-virtual {p1}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 239
    invoke-virtual {p1, v2, v2}, Lcom/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_LOGIN"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    .line 244
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->login(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 246
    .end local v0    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    return-void
.end method

.method private startMain()V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->finish()V

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method private startSignUp(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 3
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->finish()V

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method private syncLocalDB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 473
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v3, :cond_0

    .line 474
    new-instance v3, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 476
    :cond_0
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 478
    .local v0, "mStepsDBHelper":Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    .line 479
    .local v2, "setToday":Lorg/joda/time/DateTime;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 480
    new-instance v3, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/StepsDBHelper;)V

    invoke-static {v2, v2, v5, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getTodayStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 501
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 502
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 506
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakao/auth/Session;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbCbm:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->pref:Landroid/content/SharedPreferences;

    .line 77
    const v0, 0x7f1001e7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    .line 78
    const v0, 0x7f1001e6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justGo:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f1001ec

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->tv_skip_justogo:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->progress:Landroid/widget/ProgressBar;

    .line 81
    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbLogin:Lcom/facebook/login/widget/LoginButton;

    .line 82
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbLogin:Lcom/facebook/login/widget/LoginButton;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "user_friends"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none_login_user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justGo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbCbm:Lcom/facebook/CallbackManager;

    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbLogin:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->fbCbm:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/widget/LoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 121
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 125
    :cond_1
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-static {v0}, Lcom/kakao/usermgmt/UserManagement;->requestLogout(Lcom/kakao/usermgmt/callback/LogoutResponseCallback;)V

    .line 132
    invoke-static {p0}, Lcom/cashwalk/cashwalk/CashWalkApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 134
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/activity/LoginActivity$1;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->callback:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    .line 135
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->callback:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    invoke-virtual {v0, v1}, Lcom/kakao/auth/Session;->addCallback(Lcom/kakao/auth/ISessionCallback;)V

    .line 136
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/Session;->checkAndImplicitOpen()Z

    .line 138
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->justGo:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 516
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 517
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->callback:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    invoke-virtual {v0, v1}, Lcom/kakao/auth/Session;->removeCallback(Lcom/kakao/auth/ISessionCallback;)V

    .line 518
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 569
    packed-switch p1, :pswitch_data_0

    .line 578
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity;->rl_justgo_info:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 573
    const/4 v0, 0x1

    goto :goto_1

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->finish()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
