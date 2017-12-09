.class public Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandNotiMainAppActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isEnterActivity:Z

.field private final mFaceBookPackageName:Ljava/lang/String;

.field private final mKakaoPackageName:Ljava/lang/String;

.field private mNotiPermissionDialog:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

.field private mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

.field private mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

.field private rl_other_apps:Landroid/widget/RelativeLayout;

.field private rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

.field private sw_call:Landroid/support/v7/widget/SwitchCompat;

.field private sw_face:Landroid/support/v7/widget/SwitchCompat;

.field private sw_kakao:Landroid/support/v7/widget/SwitchCompat;

.field private sw_msg:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 32
    const-string v0, "com.kakao.talk"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mKakaoPackageName:Ljava/lang/String;

    .line 33
    const-string v0, "com.facebook.katana"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mFaceBookPackageName:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->isEnterActivity:Z

    return-void
.end method

.method private getBottomList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAllList()Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    .local v0, "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "bottomList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    const/4 v5, 0x0

    .line 117
    .local v5, "isDefaultApp":Z
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getDefaultApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    .local v3, "defaultApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 121
    .local v4, "installApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 123
    .local v2, "defaultApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    iget-object v8, v4, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    iget-object v9, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    const/4 v5, 0x1

    goto :goto_1

    .line 129
    .end local v2    # "defaultApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_1
    if-nez v5, :cond_2

    .line 130
    if-eqz v4, :cond_2

    iget v7, v4, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 131
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    const/4 v5, 0x0

    .line 136
    goto :goto_0

    .line 140
    .end local v3    # "defaultApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    .end local v4    # "installApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_3
    return-object v1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f100129

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_kakao:Landroid/support/v7/widget/SwitchCompat;

    .line 86
    const v0, 0x7f10012b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_face:Landroid/support/v7/widget/SwitchCompat;

    .line 87
    const v0, 0x7f10012d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_call:Landroid/support/v7/widget/SwitchCompat;

    .line 88
    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_msg:Landroid/support/v7/widget/SwitchCompat;

    .line 90
    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rl_other_apps:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rl_other_apps:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_kakao:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_face:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_call:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_msg:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    .line 106
    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    .line 107
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 110
    return-void
.end method

.method private setSwitchButton()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 145
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    const-string v9, "com.kakao.talk"

    invoke-virtual {v8, v9}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    move-result-object v4

    .line 146
    .local v4, "kakao":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v4, :cond_0

    .line 147
    iget v8, v4, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    if-ne v8, v6, :cond_2

    move v2, v6

    .line 148
    .local v2, "isCheck":Z
    :goto_0
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_kakao:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 151
    .end local v2    # "isCheck":Z
    :cond_0
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    const-string v9, "com.facebook.katana"

    invoke-virtual {v8, v9}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    move-result-object v0

    .line 152
    .local v0, "face":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v0, :cond_1

    .line 153
    iget v8, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    if-ne v8, v6, :cond_3

    move v2, v6

    .line 154
    .restart local v2    # "isCheck":Z
    :goto_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_face:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 157
    .end local v2    # "isCheck":Z
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 158
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v7, "CASHBAND_CALL_NOTIFYCATION"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 159
    .local v1, "isCallNotify":Z
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_call:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 161
    const-string v7, "CASHBAND_SMS_NOTIFYCATION"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 162
    .local v3, "isSMSNotify":Z
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_msg:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 163
    return-void

    .end local v0    # "face":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .end local v1    # "isCallNotify":Z
    .end local v3    # "isSMSNotify":Z
    .end local v5    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    move v2, v7

    .line 147
    goto :goto_0

    .restart local v0    # "face":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_3
    move v2, v7

    .line 153
    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 196
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    const-string v5, "com.kakao.talk"

    invoke-virtual {v4, v5, p2}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->updateAppInfo(Ljava/lang/String;Z)V

    .line 171
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->isEnterActivity:Z

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 172
    new-instance v4, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->show()V

    .line 175
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->isEnterActivity:Z

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    const-string v5, "com.facebook.katana"

    invoke-virtual {v4, v5, p2}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->updateAppInfo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, "callPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, "callEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "CASHBAND_CALL_NOTIFYCATION"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 190
    .end local v0    # "callEditor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "callPref":Landroid/content/SharedPreferences;
    :pswitch_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 191
    .local v3, "smsPref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 192
    .local v2, "smsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "CASHBAND_SMS_NOTIFYCATION"

    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f100129
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mPkgInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .line 54
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiPermissionDialog:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    .line 55
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiPermissionDialog:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->checkAndShow()V

    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->initView()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 63
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->setSwitchButton()V

    .line 65
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->getBottomList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->setList(Ljava/util/ArrayList;)V

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->mNotiPermissionDialog:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->isNotiPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_kakao:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_face:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_call:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_msg:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rl_other_apps:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_kakao:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_face:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_call:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->sw_msg:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rl_other_apps:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->rv_app_noti_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method
