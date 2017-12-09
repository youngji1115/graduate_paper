.class public Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSearchActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;


# instance fields
.field private final ANIMATION_DURATION:I

.field private isPlayAnim:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshMenu:Landroid/view/MenuItem;

.field private mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

.field private ringViews:[Landroid/widget/ImageView;

.field private rv_band_list:Landroid/support/v7/widget/RecyclerView;

.field private tv_band_description_center:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 45
    const/16 v0, 0x320

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->ANIMATION_DURATION:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->isPlayAnim:Z

    .line 115
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->isPlayAnim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mRefreshMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->connectSuccess()V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->connectFailed(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startDiscovery()V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startAnim(I)V

    return-void
.end method

.method private checkBluetoothPermission()V
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->connectSuccess()V

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 90
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startDiscovery()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->requestBluetoothEnable()V

    goto :goto_0
.end method

.method private connectDevice()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 148
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 163
    return-void
.end method

.method private connectFailed(I)V
    .locals 3
    .param p1, "err"    # I

    .prologue
    const/4 v2, 0x0

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 186
    const-string/jumbo v0, "\ub514\ubc14\uc774\uc2a4\uc640\uc758 \uc5f0\uacb0\uc774 \ubd88\uc548\uc815\ud569\ub2c8\ub2e4.\n\uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->requestBluetoothEnable()V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :pswitch_2
    const-string/jumbo v0, "\ub514\ubc14\uc774\uc2a4\ub97c \ucc3e\uc9c0 \ubabb\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private connectSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getLeDevice()Lcom/zeroner/android_zeroner_ble/model/WristBand;

    move-result-object v0

    .line 168
    .local v0, "bandInfo":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->tv_band_description_center:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->tv_band_description_center:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->tv_band_description_center:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 172
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 66
    const v0, 0x7f100149

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    .line 67
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    invoke-virtual {v0, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    const v0, 0x7f100148

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->tv_band_description_center:Landroid/widget/TextView;

    .line 75
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f100145

    .line 76
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const v0, 0x7f100146

    .line 77
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const v0, 0x7f100147

    .line 78
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->ringViews:[Landroid/widget/ImageView;

    .line 81
    return-void
.end method

.method private playAnim()V
    .locals 5

    .prologue
    .line 239
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->ringViews:[Landroid/widget/ImageView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 240
    .local v0, "v":Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startAnim(I)V

    .line 244
    return-void
.end method

.method private requestBluetoothEnable()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "bluetoothIntent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private startAnim(I)V
    .locals 8
    .param p1, "fade"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "delay":I
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->isPlayAnim:Z

    if-nez v3, :cond_1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 284
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->ringViews:[Landroid/widget/ImageView;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 255
    .local v1, "v":Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 257
    .local v2, "viewCompat":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v6

    const v7, 0x7f100147

    if-ne v6, v7, :cond_2

    .line 258
    new-instance v6, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;

    invoke-direct {v6, p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 276
    :cond_2
    int-to-float v6, p1

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 277
    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 278
    const-wide/16 v6, 0x320

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 279
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const v7, 0x3f99999a    # 1.2f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 280
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 282
    add-int/lit16 v0, v0, 0xc8

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startDiscovery()V
    .locals 3

    .prologue
    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->isPlayAnim:Z

    .line 99
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->playAnim()V

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->rv_band_list:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->tv_band_description_center:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mSearchListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->removeAllItem()V

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startDiscovery()V

    .line 221
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->checkBluetoothPermission()V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 197
    const-string/jumbo v0, "\ub2e4\uc2dc\ucc3e\uae30"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mRefreshMenu:Landroid/view/MenuItem;

    .line 198
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mRefreshMenu:Landroid/view/MenuItem;

    const-string/jumbo v1, "\ub2e4\uc2dc\ucc3e\uae30"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 199
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mRefreshMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 236
    :cond_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "band"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CASHBAND_MAC"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v2, "CASHBAND_NAME"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->connectDevice()V

    .line 141
    return-void
.end method
