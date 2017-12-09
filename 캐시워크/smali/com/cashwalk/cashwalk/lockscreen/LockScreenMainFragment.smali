.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
.super Landroid/support/v4/app/Fragment;
.source "LockScreenMainFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final AD_SHOW_DAYS:I = 0x3

.field private static final REQUEST_PICK:I = 0x77

.field public static bNews:Z

.field public static isTutorialFinished:Z

.field public static iv_navi_handle_new:Landroid/widget/ImageView;

.field public static shouldMustUpdate:Z

.field public static shouldUpdate:Z


# instance fields
.field private actionReceiver:Landroid/content/BroadcastReceiver;

.field private adLayout:Landroid/widget/LinearLayout;

.field private adView:Landroid/widget/FrameLayout;

.field private alertDialog:Landroid/app/AlertDialog;

.field private background:Landroid/widget/ImageView;

.field private bg_update_progressbar:Landroid/widget/ProgressBar;

.field private blackFilter:Landroid/view/View;

.field private createdAt:Lorg/joda/time/DateTime;

.field private date:Landroid/widget/TextView;

.field private fab:Landroid/widget/ImageButton;

.field private fabAppContainer:Landroid/widget/LinearLayout;

.field private fab_update_progressbar:Landroid/widget/ProgressBar;

.field private fbAdView:Lcom/facebook/ads/AdView;

.field private moreover:Landroid/widget/ImageButton;

.field private msg:Landroid/widget/TextView;

.field private msgLayout:Landroid/widget/FrameLayout;

.field private msgTouch:Landroid/widget/ImageView;

.field private naviHandle:Landroid/widget/ImageView;

.field private pm:Landroid/content/pm/PackageManager;

.field private popup:Landroid/support/v7/widget/PopupMenu;

.field private pref:Landroid/content/SharedPreferences;

.field private receiver:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;

.field private resultCoachUrl:Ljava/lang/String;

.field private rl_fragment_base_layout:Landroid/widget/RelativeLayout;

.field private rl_navi_handle:Landroid/widget/RelativeLayout;

.field private selectedMenu:I

.field private slide:Landroid/widget/TextView;

.field private slideIcon:Landroid/widget/ImageView;

.field private steps:I

.field private time:Landroid/widget/TextView;

.field private tutorialArrow:Landroid/widget/ImageView;

.field private tutorialFilter:Landroid/widget/ImageView;

.field private tutorialImage:Landroid/widget/ImageView;

.field private tutorialText:Landroid/widget/TextView;

.field private unlocked:Z

.field private vibrator:Landroid/os/Vibrator;

.field private weatherFilter:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    .line 119
    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    .line 120
    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldMustUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->steps:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/util/network/model/News;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/News;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showNews(Lcom/cashwalk/cashwalk/util/network/model/News;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->weatherFilter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadPhoneNumber()V

    return-void
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pickFromGallery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->selectedMenu:I

    return v0
.end method

.method static synthetic access$1402(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->selectedMenu:I

    return p1
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_fragment_base_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/support/v7/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->naviHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_navi_handle:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showUpdateDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->resultCoachUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->resultCoachUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab_update_progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->refreshDateTime()V

    return-void
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadSteps(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p1, "x1"    # Lcom/facebook/ads/AdView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fbAdView:Lcom/facebook/ads/AdView;

    return-object p1
.end method

.method private checkUpdate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 770
    sget-boolean v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    if-eqz v2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 772
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 773
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 777
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v3, 0x7f0902e7

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$19;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$19;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    sget-boolean v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldMustUpdate:Z

    if-eqz v2, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showUpdateDialog()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    sget-boolean v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PREFERENCE_UPDATE_CHECK_DATETIME"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "updateDateTime":Ljava/lang/String;
    if-eqz v1, :cond_2

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    :cond_2
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 867
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 339
    const v1, 0x7f100204

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    .line 340
    const v1, 0x7f1003b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->time:Landroid/widget/TextView;

    .line 341
    const v1, 0x7f1003ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->date:Landroid/widget/TextView;

    .line 342
    const v1, 0x7f100137

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->moreover:Landroid/widget/ImageButton;

    .line 343
    const v1, 0x7f1003c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    .line 344
    const v1, 0x7f100387

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fabAppContainer:Landroid/widget/LinearLayout;

    .line 345
    const v1, 0x7f1003c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    .line 346
    const v1, 0x7f1003c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    .line 347
    const v1, 0x7f1003c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    .line 348
    const v1, 0x7f1003bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    .line 349
    const v1, 0x7f1003c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    .line 350
    const v1, 0x7f1003b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->weatherFilter:Landroid/widget/ImageView;

    .line 351
    const v1, 0x7f1003b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->blackFilter:Landroid/view/View;

    .line 352
    const v1, 0x7f1003bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    .line 353
    const v1, 0x7f1003bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialText:Landroid/widget/TextView;

    .line 354
    const v1, 0x7f1003c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialArrow:Landroid/widget/ImageView;

    .line 355
    const v1, 0x7f1003be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    .line 356
    const v1, 0x7f1003cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->naviHandle:Landroid/widget/ImageView;

    .line 357
    const v1, 0x7f1003cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->iv_navi_handle_new:Landroid/widget/ImageView;

    .line 358
    const v1, 0x7f1003cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_navi_handle:Landroid/widget/RelativeLayout;

    .line 359
    const v1, 0x7f1003b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_fragment_base_layout:Landroid/widget/RelativeLayout;

    .line 361
    const v1, 0x7f1003ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adView:Landroid/widget/FrameLayout;

    .line 362
    const v1, 0x7f1003c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adLayout:Landroid/widget/LinearLayout;

    .line 363
    const v1, 0x7f1003c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab_update_progressbar:Landroid/widget/ProgressBar;

    .line 364
    const v1, 0x7f1002f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->bg_update_progressbar:Landroid/widget/ProgressBar;

    .line 366
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "Roboto-Thin.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->date:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "Roboto-Light.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "LOCKSCREEN_COACH_PROFILE_PATH"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "coachImage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->refreshDateTime()V

    .line 372
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateProfile(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CASHWALK_LOCKSCREEN_NEW_ICON"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    sget-object v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->iv_navi_handle_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->naviHandle:Landroid/widget/ImageView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_navi_handle:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->moreover:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    .line 428
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 429
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 511
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->moreover:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$9;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateBackground()V

    .line 519
    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    .line 521
    return-object p1

    .line 403
    :cond_0
    sget-object v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->iv_navi_handle_new:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;-><init>()V

    .line 137
    .local v0, "fragment":Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    return-object v0
.end method

.method private pickFromGallery()V
    .locals 2

    .prologue
    .line 1150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const/16 v1, 0x77

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1155
    return-void
.end method

.method private refreshDateTime()V
    .locals 6

    .prologue
    .line 1089
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 1090
    .local v0, "now":Lorg/joda/time/DateTime;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->time:Landroid/widget/TextView;

    const-string v2, "h:mm"

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->date:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->getShortDateTimeFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/joda/time/DateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    const v5, 0x7f090215

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    const v5, 0x7f090138

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfWeek()Lorg/joda/time/DateTime$Property;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->date:Landroid/widget/TextView;

    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->getSemiLongDateTimeFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNews(Lcom/cashwalk/cashwalk/util/network/model/News;)V
    .locals 3
    .param p1, "news"    # Lcom/cashwalk/cashwalk/util/network/model/News;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 525
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->bNews:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/News;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/util/network/model/News;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->bNews:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->adLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUpdateDialog()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 877
    :cond_0
    return-void
.end method

.method private uploadCoachProfile(Ljava/lang/String;)V
    .locals 8
    .param p1, "selectImagePath"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0201b9

    const/4 v7, 0x0

    .line 1045
    const/16 v2, 0x48

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v1

    .line 1046
    .local v1, "px":I
    if-nez p1, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1086
    :goto_0
    return-void

    .line 1050
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab_update_progressbar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1051
    sget-object v2, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_BUCKET_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "USER_ID"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/coach_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    invoke-direct {v4, p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)V

    invoke-static {p1, v2, v3, v4}, Lcom/cashwalk/cashwalk/util/AWSHelper;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1083
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090141

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private uploadPhoneNumber()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v0

    .line 261
    .local v0, "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 262
    .local v2, "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    if-eqz v0, :cond_0

    .line 263
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 264
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 270
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 278
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 279
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    goto :goto_0
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 1122
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$23;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$23;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1146
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x140

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1160
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09018f

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1188
    :goto_0
    return-void

    .line 1165
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1180
    :sswitch_0
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 1182
    .local v1, "resultUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadCoachProfile(Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    .end local v1    # "resultUri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1169
    .local v2, "sourceUri":Landroid/net/Uri;
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 1170
    .local v0, "options":Lcom/yalantis/ucrop/UCrop$Options;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 1171
    const v3, 0x7f090134

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 1173
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coach"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 1174
    invoke-virtual {v3, v8, v8}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 1175
    invoke-virtual {v3, v9, v9}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 1176
    invoke-virtual {v3, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 1177
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1185
    .end local v0    # "options":Lcom/yalantis/ucrop/UCrop$Options;
    .end local v2    # "sourceUri":Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_0
        0x60 -> :sswitch_2
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCoinBoxClicked()V
    .locals 1

    .prologue
    .line 1116
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-nez v0, :cond_0

    .line 1117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    .line 1119
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pm:Landroid/content/pm/PackageManager;

    .line 145
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    .line 146
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->vibrator:Landroid/os/Vibrator;

    .line 147
    iput-boolean v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->unlocked:Z

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090132

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v3, 0x7f090101

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 166
    const v3, 0x7f0902e8

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 170
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v4, "CREATED_DATETIME"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "cdt":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 173
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, v1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->createdAt:Lorg/joda/time/DateTime;

    .line 178
    :goto_0
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->actionReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_SHOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_HIDE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_URL_OPEN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_RAIN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_SNOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_CLEAR"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->actionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_LOCKSCREEN_NEWS"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->bNews:Z

    .line 256
    return-void

    .line 175
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->createdAt:Lorg/joda/time/DateTime;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->initView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fbAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fbAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 296
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->actionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->actionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 306
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->receiver:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->bNews:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 312
    :cond_0
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 315
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 321
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->checkUpdate()V

    .line 323
    sget-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_REFRESH_NEWS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->unlocked:Z

    .line 329
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$1;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->receiver:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "com.cashwalk.cashwalk.ACTION_DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->receiver:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->refreshDateTime()V

    .line 336
    return-void
.end method

.method public onStepChanged(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1110
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->steps:I

    .line 1111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    .line 1112
    return-void
.end method

.method public showWebContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 1103
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1106
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 880
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 882
    .local v0, "bgId":I
    if-nez v0, :cond_2

    .line 883
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "bgPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 885
    const-string v2, "re_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    const-string v2, "re_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 887
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateBackground(I)V

    .line 895
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 889
    .restart local v1    # "bgPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateBackground(I)V

    goto :goto_0
.end method

.method public updateBackground(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0202de

    .line 940
    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 942
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 943
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 945
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 946
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 948
    .local v1, "height":I
    packed-switch p1, :pswitch_data_0

    .line 1028
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1033
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "size":Landroid/graphics/Point;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 950
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "size":Landroid/graphics/Point;
    .restart local v3    # "width":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 953
    :pswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202df

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 956
    :pswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 959
    :pswitch_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 962
    :pswitch_4
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 965
    :pswitch_5
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 968
    :pswitch_6
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 971
    :pswitch_7
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 974
    :pswitch_8
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 977
    :pswitch_9
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 980
    :pswitch_a
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e8

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 983
    :pswitch_b
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e9

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 986
    :pswitch_c
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ea

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 989
    :pswitch_d
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202eb

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 992
    :pswitch_e
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ec

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 995
    :pswitch_f
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ed

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 998
    :pswitch_10
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ee

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1001
    :pswitch_11
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ef

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1004
    :pswitch_12
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1007
    :pswitch_13
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1010
    :pswitch_14
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1013
    :pswitch_15
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1016
    :pswitch_16
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1019
    :pswitch_17
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_18
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1025
    :pswitch_19
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0202de

    const/4 v7, 0x0

    .line 898
    if-eqz p1, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 900
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 901
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 903
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 904
    .local v4, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 905
    .local v2, "height":I
    const-string v5, "bg_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 907
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 909
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 910
    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 911
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v7, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    .line 912
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v7, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    .line 913
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    new-instance v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$21;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$21;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    .line 914
    invoke-virtual {v5, v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 937
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "height":I
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 925
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "height":I
    .restart local v3    # "size":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 926
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 927
    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 928
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    .line 929
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 930
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 933
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 934
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->background:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public updateMessage(Z)V
    .locals 10
    .param p1, "coinCliked"    # Z

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE"

    const-string v6, "LOCKSCREEN_TUTORIAL_STAGE_HELLO_1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "stage":Ljava/lang/String;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 562
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_FINISHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    const/4 v4, 0x1

    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    .line 564
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 565
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialArrow:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 571
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0201d1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 572
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v7

    const/16 v8, 0x12

    invoke-static {v8}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 573
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->naviHandle:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_navi_handle:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 576
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    .line 577
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f110001

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 764
    .end local v2    # "stage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "stage":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    .line 581
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slide:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->slideIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 585
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0201d2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 586
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v7

    const/16 v8, 0x12

    invoke-static {v8}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 587
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->naviHandle:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->rl_navi_handle:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 589
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    .line 590
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f110002

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 593
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_HELLO_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    .line 595
    :try_start_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v4

    const-string/jumbo v5, "tutorial_begin"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 600
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialArrow:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 604
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "NICKNAME"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "nickname":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 606
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d6

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    const v7, 0x7f0902ec

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :goto_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$11;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$11;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 596
    .end local v1    # "nickname":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "nickname":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d6

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 620
    .end local v1    # "nickname":Ljava/lang/String;
    :cond_4
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_HELLO_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 621
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialArrow:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 625
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d7

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$12;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$12;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 636
    :cond_5
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_HELLO_3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 637
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const v5, 0x7f0201dd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 641
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d8

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$13;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$13;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 652
    :cond_6
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_WALK_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 653
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 654
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f050015

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    :cond_7
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE_WALK_START_STEPS"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 659
    .local v3, "stepStart":I
    if-gez v3, :cond_8

    .line 660
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE_WALK_START_STEPS"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "steps"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 661
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "steps"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 664
    :cond_8
    iget v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->steps:I

    sub-int/2addr v4, v3

    const/16 v5, 0x9

    if-le v4, v5, :cond_9

    .line 665
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE"

    const-string v6, "LOCKSCREEN_TUTORIAL_STAGE_WALK_2"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 666
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    .line 668
    :cond_9
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 669
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d9

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 670
    .end local v3    # "stepStart":I
    :cond_a
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_WALK_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 671
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901da

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 676
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_SHOW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 677
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$14;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$14;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_HIDE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 686
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE"

    const-string v6, "LOCKSCREEN_TUTORIAL_STAGE_WALK_3"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 687
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    goto/16 :goto_0

    .line 689
    :cond_b
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_WALK_3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 690
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialFilter:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 692
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const v5, 0x7f0201dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 695
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901db

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$15;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$15;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 705
    :cond_c
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_GOODBYE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 706
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 707
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f050015

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 708
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->tutorialImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    :cond_d
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 712
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d5

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$16;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$16;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgTouch:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 722
    :cond_e
    const-string v4, "LOCKSCREEN_TUTORIAL_STAGE_FIGHTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msgLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 724
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    const v5, 0x7f0901d4

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->pref:Landroid/content/SharedPreferences;

    const-string v8, "NICKNAME"

    const v9, 0x7f0902ec

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->msg:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$17;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$17;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public updateProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0201b9

    .line 1036
    const/16 v1, 0x48

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v0

    .line 1037
    .local v0, "px":I
    if-eqz p1, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1042
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->fab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
