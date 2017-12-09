.class public Lcom/cashwalk/cashwalk/activity/MyPageActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iv_profile_image:Landroid/widget/ImageView;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_height:Landroid/widget/RelativeLayout;

.field private rl_logout:Landroid/widget/RelativeLayout;

.field private rl_my_invite_code:Landroid/widget/RelativeLayout;

.field private rl_my_point_history:Landroid/widget/RelativeLayout;

.field private rl_quit:Landroid/widget/RelativeLayout;

.field private rl_reset_contacts:Landroid/widget/RelativeLayout;

.field private rl_reset_facebook:Landroid/widget/RelativeLayout;

.field private rl_update_profile:Landroid/widget/RelativeLayout;

.field private rl_weight:Landroid/widget/RelativeLayout;

.field private tv_edit_nickname:Landroid/widget/TextView;

.field private tv_height:Landroid/widget/TextView;

.field private tv_my_invite_code:Landroid/widget/TextView;

.field private tv_nickname:Landroid/widget/TextView;

.field private tv_point:Landroid/widget/TextView;

.field private tv_weight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/MyPageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->uploadSteps(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->reset()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_facebook:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_weight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_height:Landroid/widget/TextView;

    return-object v0
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 113
    const v0, 0x7f100243

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_update_profile:Landroid/widget/RelativeLayout;

    .line 114
    const v0, 0x7f100245

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_my_invite_code:Landroid/widget/RelativeLayout;

    .line 115
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_my_point_history:Landroid/widget/RelativeLayout;

    .line 116
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_logout:Landroid/widget/RelativeLayout;

    .line 117
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_quit:Landroid/widget/RelativeLayout;

    .line 118
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_weight:Landroid/widget/RelativeLayout;

    .line 119
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_height:Landroid/widget/RelativeLayout;

    .line 120
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    .line 121
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_facebook:Landroid/widget/RelativeLayout;

    .line 123
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->iv_profile_image:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f100238

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_nickname:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f100242

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_point:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_edit_nickname:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100246

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_my_invite_code:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f100248

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_height:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_weight:Landroid/widget/TextView;

    .line 131
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_CONTACTS_CONNECT"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_facebook:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_my_invite_code:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CODE"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_height:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "HEIGHT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_weight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "WEIGHT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_update_profile:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_my_invite_code:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_my_point_history:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_logout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_quit:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_weight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_height:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_facebook:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_contacts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->rl_reset_facebook:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private reset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 297
    sput-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 298
    sput-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->u:Ljava/lang/String;

    .line 299
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    new-instance v0, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    invoke-direct {v0, p0, v6}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 304
    .local v0, "contactsDBHelper":Lcom/cashwalk/cashwalk/util/ContactsDBHelper;
    sget-object v5, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v5, :cond_0

    .line 305
    new-instance v5, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v5, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 307
    :cond_0
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 309
    .local v3, "stepsDBHelper":Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->clear()V

    .line 310
    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->clear()V

    .line 313
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v6, "yyyyMMdd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "today":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string/jumbo v5, "steps"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v5, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v2, "restartApp":Landroid/content/Intent;
    const v5, 0x8000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->finish()V

    .line 326
    return-void
.end method

.method private setHeight()V
    .locals 4

    .prologue
    .line 407
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, "ad":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090261

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 411
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 412
    .local v1, "et":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 413
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 414
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_height:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 416
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$10;

    invoke-direct {v3, p0, v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$11;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 464
    return-void
.end method

.method private setWeight()V
    .locals 4

    .prologue
    .line 347
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "ad":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 351
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, "et":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 354
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 355
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_weight:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$9;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 404
    return-void
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 329
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->reset()V

    .line 344
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/cashwalk/cashwalk/activity/MyPageActivity$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 343
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f090169

    const v5, 0x7f090132

    const v4, 0x7f090101

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 198
    .local v1, "getId":I
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    packed-switch v1, :pswitch_data_0

    .line 294
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->setHeight()V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->setWeight()V

    goto :goto_0

    .line 210
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ViralActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :pswitch_6
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090270

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 249
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 275
    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$5;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7f100243
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "mypage"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->initLayout()V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_edit_nickname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_nickname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->tv_point:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
