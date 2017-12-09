.class public Lcom/cashwalk/cashwalk/activity/SettingsActivity;
.super Lcom/cashwalk/cashwalk/activity/AppCompatPreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/activity/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v11, 0x7f070003

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    .line 48
    const-string v11, "keyguard"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 49
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 50
    const v11, 0x7f0901b0

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_0
    const-string v11, "SETTINGS_LOCKSCREEN_SOUND"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 54
    .local v6, "prefSound":Landroid/preference/SwitchPreference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$1;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v6, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v11, "SETTINGS_LOCKSCREEN_VIBRATION"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 62
    .local v8, "prefVibration":Landroid/preference/SwitchPreference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$2;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v8, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v11, "SETTINGS_LOCKSCREEN_NEWS"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 70
    .local v4, "prefNews":Landroid/preference/SwitchPreference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$3;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v4, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v11, "preference_version"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 172
    .local v7, "prefVersion":Landroid/preference/Preference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$4;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;

    invoke-direct {v11, p0, v7}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;Landroid/preference/Preference;)V

    invoke-static {v11}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v10

    .line 204
    .local v10, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v11}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 206
    const-string v11, "preference_profile_info"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 207
    .local v1, "mypage":Landroid/preference/Preference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$6;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 265
    const-string v11, "preference_wallpaper"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 266
    .local v9, "prefWallpaper":Landroid/preference/Preference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 274
    const-string v11, "preference_feedback"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 275
    .local v3, "prefFeedback":Landroid/preference/Preference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 318
    const-string v11, "preference_faq"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 319
    .local v2, "prefFaq":Landroid/preference/Preference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;

    invoke-direct {v11, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 331
    const-string v11, "SETTINGS_SHOW_ON_LOCKSCREEN"

    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    .line 332
    .local v5, "prefShowOnLockscreen":Landroid/preference/SwitchPreference;
    new-instance v11, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    invoke-direct {v11, p0, v5}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v5, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 370
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/activity/AppCompatPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 377
    :pswitch_0
    invoke-super {p0}, Lcom/cashwalk/cashwalk/activity/AppCompatPreferenceActivity;->onBackPressed()V

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
