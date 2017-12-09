.class public Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandNotiOtherAppActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;


# instance fields
.field private mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

.field private mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->initView()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 52
    const v1, 0x7f100130

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 53
    .local v0, "rv_app_noti_list":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    .line 54
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-virtual {v1, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->setOnCheckedChanged(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;)V

    .line 56
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mNotiSettingListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 57
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    return-void
.end method

.method private setOtherAppList()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 40
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getNotiEnabledApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onChange(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->updateAppInfo(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->setOtherAppList()V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    :cond_0
    return-void
.end method
