.class public Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignupGenderFragment.java"


# instance fields
.field private birth:Landroid/widget/TextView;

.field private birthDay:Lorg/joda/time/DateTime;

.field private female:Landroid/widget/RadioButton;

.field public instance:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

.field private listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

.field private mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

.field private male:Landroid/widget/RadioButton;

.field private next:Landroid/widget/Button;

.field private nicknameText:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->checkData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->male:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birthDay:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    return-object v0
.end method

.method private checkData()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->male:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->female:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birth:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;
    .locals 1
    .param p0, "listener"    # Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 43
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;-><init>()V

    .line 44
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;
    iput-object p0, v0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    .line 45
    iput-object p1, v0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 46
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->pref:Landroid/content/SharedPreferences;

    .line 56
    iput-object p0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->instance:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0902ec

    .line 61
    const v1, 0x7f04009c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->nicknameText:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f1003d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birth:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f10026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->next:Landroid/widget/Button;

    .line 66
    const v1, 0x7f1003d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->male:Landroid/widget/RadioButton;

    .line 67
    const v1, 0x7f1003d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->female:Landroid/widget/RadioButton;

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NICKNAME"

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->nicknameText:Landroid/widget/TextView;

    const v2, 0x7f09027f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birth:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->next:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object v0
.end method

.method public setBirthDay(Ljava/lang/String;III)V
    .locals 1
    .param p1, "dateTest"    # Ljava/lang/String;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 154
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0, p2}, Lorg/joda/time/DateTime;->withYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTime;->withMonthOfYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTime;->withDayOfMonth(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birthDay:Lorg/joda/time/DateTime;

    .line 155
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->birth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method
