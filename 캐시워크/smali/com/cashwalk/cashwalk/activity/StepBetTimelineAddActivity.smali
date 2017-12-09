.class public Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final REQUEST_PICK:I = 0x77


# instance fields
.field private address:Ljava/lang/String;

.field private cacheUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

.field private et_title_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

.field private imageUrl:Ljava/lang/String;

.field private isGPS:Z

.field private isLocation:Z

.field private iv_add_image:Landroid/widget/ImageView;

.field private iv_cancel_select_image:Landroid/widget/ImageView;

.field private iv_cancel_web_preview:Landroid/widget/ImageView;

.field private iv_profile_image:Landroid/widget/ImageView;

.field private iv_select_location_icon:Landroid/widget/ImageView;

.field private iv_web_preview_image:Landroid/widget/ImageView;

.field private loc:Landroid/location/Location;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mUrlTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_base_layout:Landroid/widget/RelativeLayout;

.field private rl_exit_cancel:Landroid/widget/RelativeLayout;

.field private rl_exit_info_popup:Landroid/widget/RelativeLayout;

.field private rl_exit_ok:Landroid/widget/RelativeLayout;

.field private rl_gps_off_info_popup:Landroid/widget/RelativeLayout;

.field private rl_gps_on_cancel:Landroid/widget/RelativeLayout;

.field private rl_gps_on_setting:Landroid/widget/RelativeLayout;

.field private rl_select_location:Landroid/widget/RelativeLayout;

.field private rl_select_photo:Landroid/widget/RelativeLayout;

.field private rl_url_info_layout:Landroid/widget/RelativeLayout;

.field private softKeyboard:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

.field private tv_select_location:Landroid/widget/TextView;

.field private tv_web_preview_desc:Landroid/widget/TextView;

.field private tv_web_preview_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->imageUrl:Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isLocation:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isGPS:Z

    .line 109
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mUrlTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_select_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_add_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_url_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/network/model/OGTag;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mUrlTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Lcom/cashwalk/cashwalk/util/network/model/OGTag;)Lcom/cashwalk/cashwalk/util/network/model/OGTag;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mUrlTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/PasteEditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/PasteEditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_title_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->loc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->loc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_web_preview_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_web_preview_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_web_preview_desc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_info_popup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_off_info_popup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isLocation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isLocation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_select_location_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_location:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_select_location:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isGPS:Z

    return v0
.end method

.method private addOGTypeMemo(Ljava/lang/String;)V
    .locals 5
    .param p1, "resultUrl"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 602
    :cond_0
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 603
    .local v0, "queue":Lcom/android/volley/RequestQueue;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    new-instance v4, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$16;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$16;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 673
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 674
    return-void
.end method

.method private checkGPS()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 357
    .local v0, "locManager":Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isLocation:Z

    .line 359
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isGPS:Z

    .line 360
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_select_location_icon:Landroid/widget/ImageView;

    const v2, 0x7f020199

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_location:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 363
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    const-string/jumbo v1, "\ucc3e\ub294\uc911..."

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_select_location:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_2

    .line 369
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 371
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 372
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 375
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 386
    :cond_2
    :goto_0
    return-void

    .line 380
    :cond_3
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isGPS:Z

    .line 381
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->isLocation:Z

    .line 382
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_select_location_icon:Landroid/widget/ImageView;

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_location:Landroid/widget/RelativeLayout;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 384
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_select_location:Landroid/widget/TextView;

    const-string/jumbo v2, "\ub0b4\uc704\uce58 \ube44\uacf5\uac1c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string v4, "[(http(s)?):\\/\\/(www\\.)?a-zA-Z0-9@:%._\\+~#=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%_\\+.~#?&//=]*)"

    .line 679
    .local v4, "regex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 682
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 684
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v0, v5, :cond_4

    .line 686
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 687
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 688
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 687
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->addOGTypeMemo(Ljava/lang/String;)V

    .line 685
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 700
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->addOGTypeMemo(Ljava/lang/String;)V

    .line 707
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    return v5
.end method

.method private requestLocation()V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 515
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 518
    :cond_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 556
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 575
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_TIMELINE_BUCKET_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "USER_ID"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/timeline_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$14;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$14;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/cashwalk/cashwalk/util/AWSHelper;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 589
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_url_info_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_add_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_select_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_add_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 593
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-static {p3}, Lcom/esafirm/imagepicker/features/ImagePicker;->getImages(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 118
    .local v2, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/esafirm/imagepicker/model/Image;

    invoke-virtual {v7}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v7, "Orientation"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, "orientation":I
    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->exifToDegrees(I)I

    move-result v6

    .line 122
    .local v6, "rotationInDegrees":I
    invoke-static {p0, v4, v6}, Lcom/cashwalk/cashwalk/util/Utils;->resizeImageFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "rotatedPath":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->uploadPhoto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "rotatedPath":Ljava/lang/String;
    .end local v6    # "rotationInDegrees":I
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_title_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->finish()V

    .line 505
    const v0, 0x7f050017

    const v1, 0x7f050022

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->overridePendingTransition(II)V

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 508
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_info_popup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->requestLocation()V

    .line 561
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 571
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 566
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f020221

    const/4 v5, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v1, 0x7f04004f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->cacheUrl:Ljava/util/ArrayList;

    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    .line 139
    const v1, 0x7f10028f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_base_layout:Landroid/widget/RelativeLayout;

    .line 140
    const v1, 0x7f100237

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_profile_image:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f100292

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/PasteEditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    .line 142
    const v1, 0x7f100291

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/PasteEditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_title_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    .line 143
    const v1, 0x7f1002a0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_select_location:Landroid/widget/TextView;

    .line 144
    const v1, 0x7f10029c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_photo:Landroid/widget/RelativeLayout;

    .line 145
    const v1, 0x7f10029a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_add_image:Landroid/widget/ImageView;

    .line 146
    const v1, 0x7f10029b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_select_image:Landroid/widget/ImageView;

    .line 147
    const v1, 0x7f10029f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_select_location_icon:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f100296

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_web_preview_image:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f100299

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_web_preview:Landroid/widget/ImageView;

    .line 150
    const v1, 0x7f100297

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_web_preview_title:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f100298

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->tv_web_preview_desc:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f100295

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_url_info_layout:Landroid/widget/RelativeLayout;

    .line 153
    const v1, 0x7f10029e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_location:Landroid/widget/RelativeLayout;

    .line 154
    const v1, 0x7f1002a1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_off_info_popup:Landroid/widget/RelativeLayout;

    .line 155
    const v1, 0x7f1002a2

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_on_cancel:Landroid/widget/RelativeLayout;

    .line 156
    const v1, 0x7f1002a3

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_on_setting:Landroid/widget/RelativeLayout;

    .line 157
    const v1, 0x7f1002a4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_info_popup:Landroid/widget/RelativeLayout;

    .line 158
    const v1, 0x7f1002a5

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_cancel:Landroid/widget/RelativeLayout;

    .line 159
    const v1, 0x7f1002a6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_ok:Landroid/widget/RelativeLayout;

    .line 200
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_select_image:Landroid/widget/ImageView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_ok:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_cancel:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_on_setting:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_gps_on_cancel:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_location:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_cancel_web_preview:Landroid/widget/ImageView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/PasteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/PasteEditText;->addListener(Lcom/cashwalk/cashwalk/util/PasteEditTextListener;)V

    .line 312
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_select_photo:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PROFILE_URL"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 334
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 337
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 340
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 343
    return-void

    .line 330
    :cond_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "PROFILE_URL"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 712
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 713
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->softKeyboard:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->softKeyboard:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->unRegisterSoftKeyboardCallback()V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->softKeyboard:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .line 717
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 415
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "body":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    invoke-direct {v3, p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$12;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$12;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 489
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "body":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    .line 490
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_body_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->et_title_text:Lcom/cashwalk/cashwalk/util/PasteEditText;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->finish()V

    .line 492
    const v2, 0x7f050017

    const v3, 0x7f050022

    invoke-virtual {p0, v2, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->overridePendingTransition(II)V

    .line 498
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 494
    :cond_2
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 495
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->rl_exit_info_popup:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 349
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->checkGPS()V

    .line 352
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 392
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 395
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 400
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 403
    :cond_0
    return-void
.end method
