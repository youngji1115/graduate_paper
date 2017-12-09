.class public Lcom/cashwalk/cashwalk/activity/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# instance fields
.field private logoLayout:Landroid/widget/LinearLayout;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_cashwalk_total_info:Landroid/widget/RelativeLayout;

.field private tv_total_cash:Landroid/widget/TextView;

.field private tv_total_steps:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SplashActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getUser()V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v5, 0x7f04004b

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    .line 52
    const v5, 0x7f10027f

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->rl_cashwalk_total_info:Landroid/widget/RelativeLayout;

    .line 53
    const v5, 0x7f100282

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->tv_total_cash:Landroid/widget/TextView;

    .line 54
    const v5, 0x7f100281

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->tv_total_steps:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f10027d

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->logoLayout:Landroid/widget/LinearLayout;

    .line 57
    const v5, 0x7f1000d6

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 58
    .local v2, "progress":Landroid/widget/ProgressBar;
    const v5, 0x7f050014

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 59
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->logoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    new-instance v5, Lcom/cashwalk/cashwalk/activity/SplashActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/cashwalk/cashwalk/activity/SplashActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "CASHWALK_TOTAL_STEPS"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "CASHWALK_TOTAL_REWARD"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->rl_cashwalk_total_info:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 83
    .local v1, "nf":Ljava/text/NumberFormat;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "CASHWALK_TOTAL_STEPS"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "totalSteps":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "CASHWALK_TOTAL_REWARD"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "totalCash":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->tv_total_steps:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\uac78\uc74c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->tv_total_cash:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\uc6d0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v1    # "nf":Ljava/text/NumberFormat;
    .end local v3    # "totalCash":Ljava/lang/String;
    .end local v4    # "totalSteps":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getUser()V

    .line 94
    return-void

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity;->rl_cashwalk_total_info:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
