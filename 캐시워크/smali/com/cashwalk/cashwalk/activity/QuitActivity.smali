.class public Lcom/cashwalk/cashwalk/activity/QuitActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "QuitActivity.java"


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private confirm:Landroid/widget/Button;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->confirm:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->check:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->reset()V

    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 89
    const v3, 0x7f090267

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 90
    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 91
    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->u:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v4, "yyyyMMdd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "today":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string/jumbo v3, "steps"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v3, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, "restartApp":Landroid/content/Intent;
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->pref:Landroid/content/SharedPreferences;

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string/jumbo v2, "viral_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    const v1, 0x7f1000a4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->check:Landroid/widget/CheckBox;

    .line 49
    const v1, 0x7f10026f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->confirm:Landroid/widget/Button;

    .line 50
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->progress:Landroid/widget/ProgressBar;

    .line 52
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->check:Landroid/widget/CheckBox;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
