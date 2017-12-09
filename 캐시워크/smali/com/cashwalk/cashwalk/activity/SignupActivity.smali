.class public Lcom/cashwalk/cashwalk/activity/SignupActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SignupActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
.implements Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;
    }
.end annotation


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;

.field private mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

.field private pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

.field private pref:Landroid/content/SharedPreferences;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/SignupActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->setInviteCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/activity/SignupActivity;Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    return-object p1
.end method

.method private setInviteCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v1, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;)V

    invoke-static {p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setInvite(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 235
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 236
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 240
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setCurrentItem(I)V

    .line 243
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setCurrentItem(I)V

    .line 247
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 250
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    const v0, 0x7f05001c

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f04004a

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pref:Landroid/content/SharedPreferences;

    .line 52
    const v2, 0x7f1001b6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    .line 53
    new-instance v2, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->adapter:Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;

    .line 54
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->adapter:Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "it":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/User;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDialogClick(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;III)V
    .locals 1
    .param p1, "dialog"    # Landroid/support/v4/app/DialogFragment;
    .param p2, "someData"    # Ljava/lang/String;
    .param p3, "y"    # I
    .param p4, "m"    # I
    .param p5, "d"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->instance:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->mSignupGenderFragment:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->instance:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->setBirthDay(Ljava/lang/String;III)V

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 307
    return-void
.end method

.method public register(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 4
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget v3, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    .line 93
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget v3, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    .line 95
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v0

    .line 96
    .local v0, "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 101
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    invoke-static {p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 162
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 163
    return-void
.end method

.method public showDatePicker()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 68
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;-><init>()V

    .line 69
    .local v0, "dialogFragment":Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;
    const-string v2, "fragment_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public showInvite(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 3
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setCurrentItem(IZ)V

    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 88
    return-void
.end method

.method public showWeight(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 3
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setCurrentItem(IZ)V

    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity;->pager:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setPagingEnabled(Z)V

    .line 79
    return-void
.end method
