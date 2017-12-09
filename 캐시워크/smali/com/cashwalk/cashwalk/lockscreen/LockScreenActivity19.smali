.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;,
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;
    }
.end annotation


# static fields
.field public static isLockScreen:Z


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;

.field private banner:Landroid/widget/ImageView;

.field private cashText:Landroid/widget/TextView;

.field private closeDrawer:Landroid/widget/ImageButton;

.field private coupon:Landroid/widget/LinearLayout;

.field public drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerNickname:Landroid/widget/LinearLayout;

.field private fabAdd:Landroid/widget/ImageButton;

.field private fabAppContainer:Landroid/widget/LinearLayout;

.field private fabScroll:Landroid/widget/HorizontalScrollView;

.field private handler:Landroid/os/Handler;

.field private isPageChanged:Z

.field private iv_menu_lotto_new:Landroid/widget/ImageView;

.field private iv_menu_rank_new:Landroid/widget/ImageView;

.field private iv_menu_shop_new:Landroid/widget/ImageView;

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private lastOffset:F

.field private loggedInHeader:Landroid/widget/RelativeLayout;

.field private loggedOutHeader:Landroid/widget/LinearLayout;

.field private motionFlag:Z

.field private newsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation
.end field

.field private newsPager:Landroid/support/v4/view/ViewPager;

.field private newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

.field private nicknameText:Landroid/widget/TextView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pm:Landroid/content/pm/PackageManager;

.field private pref:Landroid/content/SharedPreferences;

.field private profileImg:Landroid/widget/ImageView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rl_background:Landroid/widget/RelativeLayout;

.field private rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

.field private rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

.field private rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

.field private scLotto:Landroid/widget/LinearLayout;

.field private scRank:Landroid/widget/LinearLayout;

.field private scShop:Landroid/widget/LinearLayout;

.field private scStat:Landroid/widget/LinearLayout;

.field private vibrator:Landroid/os/Vibrator;

.field private weatherDesc:Landroid/widget/TextView;

.field private weatherImg:Landroid/widget/ImageView;

.field private weatherLayout:Landroid/widget/RelativeLayout;

.field private weatherTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->isLockScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->handler:Landroid/os/Handler;

    .line 121
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->isPageChanged:Z

    .line 125
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->motionFlag:Z

    .line 1111
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initNewsLayout(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)F
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->lastOffset:F

    return v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->refreshCash()V

    return-void
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;F)F
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->lastOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->nicknameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->cashText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->profileImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->loggedOutHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->loggedInHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->refreshAppListFromDB()V

    return-void
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_lotto_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_shop_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->removeAppFromDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Lcom/astuetz/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/Weather;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->hideNavBar(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->keyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->isPageChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->isPageChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->showWeather()V

    return-void
.end method

.method private addApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2a

    .line 604
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 605
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x6

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 607
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 611
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 613
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$16;

    invoke-direct {v5, p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$16;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    invoke-direct {v5, p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 651
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 652
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabScroll:Landroid/widget/HorizontalScrollView;

    const/16 v6, 0x42

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    .locals 4
    .param p1, "w"    # Lcom/cashwalk/cashwalk/util/network/model/Weather;

    .prologue
    .line 938
    if-eqz p1, :cond_1

    .line 939
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->getWeatherSkyIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 942
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->sky:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempNow:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->county:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherDesc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902cc

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempHigh:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0C / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0902cd

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempLow:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_RAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_SNOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 950
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fetchWeather(DD)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 884
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 913
    :goto_0
    return-void

    .line 887
    :cond_1
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$26;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$26;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-static {p1, p2, p3, p4, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashwalkWeather(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 911
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private hideNavBar(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 983
    return-void
.end method

.method private initDrawer()V
    .locals 8

    .prologue
    const v7, 0x7f020221

    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 249
    const v1, 0x7f1001e1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    .line 250
    const v1, 0x7f1001e0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 251
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->profileImg:Landroid/widget/ImageView;

    .line 252
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->nicknameText:Landroid/widget/TextView;

    .line 253
    const v1, 0x7f100378

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->cashText:Landroid/widget/TextView;

    .line 254
    const v1, 0x7f10037f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherLayout:Landroid/widget/RelativeLayout;

    .line 255
    const v1, 0x7f100380

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherImg:Landroid/widget/ImageView;

    .line 256
    const v1, 0x7f100381

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherTitle:Landroid/widget/TextView;

    .line 257
    const v1, 0x7f100382

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherDesc:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f1002f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->closeDrawer:Landroid/widget/ImageButton;

    .line 259
    const v1, 0x7f10020b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scLotto:Landroid/widget/LinearLayout;

    .line 260
    const v1, 0x7f100219

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scStat:Landroid/widget/LinearLayout;

    .line 261
    const v1, 0x7f10037a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scShop:Landroid/widget/LinearLayout;

    .line 262
    const v1, 0x7f100215

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scRank:Landroid/widget/LinearLayout;

    .line 263
    const v1, 0x7f100385

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabScroll:Landroid/widget/HorizontalScrollView;

    .line 264
    const v1, 0x7f100388

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAdd:Landroid/widget/ImageButton;

    .line 265
    const v1, 0x7f100387

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    .line 266
    const v1, 0x7f100389

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->banner:Landroid/widget/ImageView;

    .line 267
    const v1, 0x7f100206

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->coupon:Landroid/widget/LinearLayout;

    .line 268
    const v1, 0x7f100205

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerNickname:Landroid/widget/LinearLayout;

    .line 269
    const v1, 0x7f100377

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->loggedInHeader:Landroid/widget/RelativeLayout;

    .line 270
    const v1, 0x7f100379

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->loggedOutHeader:Landroid/widget/LinearLayout;

    .line 271
    const v1, 0x7f100216

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    .line 272
    const v1, 0x7f100218

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    .line 273
    const v1, 0x7f10037c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    .line 274
    const v1, 0x7f10037b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_shop_new:Landroid/widget/ImageView;

    .line 275
    const v1, 0x7f10037e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    .line 276
    const v1, 0x7f10037d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_lotto_new:Landroid/widget/ImageView;

    .line 278
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_RANK_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_SHOP_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_shop_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_LOTTO_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_lotto_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    :goto_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_RANK_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    :goto_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabScroll:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerNickname:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->coupon:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->banner:Landroid/widget/ImageView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initNewsLayout(Z)V

    .line 357
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$7;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 425
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->refreshAppListFromDB()V

    .line 427
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAdd:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scLotto:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$9;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scStat:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$10;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$10;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scShop:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$11;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->scRank:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$12;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$12;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->closeDrawer:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$13;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$13;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->weatherLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$14;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$14;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->nicknameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    const v4, 0x7f0902ec

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->cashText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 555
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PROFILE_URL"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 560
    :cond_0
    :goto_4
    return-void

    .line 282
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_shop_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_lotto_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 557
    .restart local v0    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v4, "PROFILE_URL"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_4
.end method

.method private initNewsLayout(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const v6, 0x7f0f0020

    .line 659
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    .line 660
    :cond_0
    const v3, 0x7f100384

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    .line 661
    const v3, 0x7f100383

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    .line 662
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 663
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 664
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 665
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 666
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 668
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 669
    .local v1, "tabsLinearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 670
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 672
    .local v2, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 679
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 695
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;

    invoke-direct {v4, p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 728
    .end local v0    # "i":I
    .end local v1    # "tabsLinearLayout":Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private initPager()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 180
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    .line 181
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$LockScreenPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 184
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 186
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 246
    return-void
.end method

.method private refreshAppListFromDB()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    const/16 v10, 0x2a

    .line 759
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 761
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 762
    .local v3, "ivInternet":Landroid/widget/ImageView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    .local v7, "paramsInternet":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 764
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02014a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$21;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$21;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 774
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 775
    .local v2, "ivGallery":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 776
    .local v6, "paramsGallery":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 777
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020149

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$22;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 787
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 788
    .local v1, "ivCamera":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 789
    .local v5, "paramsCamera":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 790
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020148

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$23;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$23;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 801
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 802
    .local v0, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 803
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 804
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020147

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$24;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$24;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 815
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    new-array v9, v11, [Ljava/lang/Void;

    .line 842
    invoke-virtual {v8, v9}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 843
    return-void
.end method

.method private refreshCash()V
    .locals 2

    .prologue
    .line 563
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 600
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 601
    return-void
.end method

.method private removeAppFromDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 731
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 755
    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 756
    return-void
.end method

.method private showWeather()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 846
    const-string v10, "location"

    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 848
    .local v1, "lm":Landroid/location/LocationManager;
    const/4 v6, 0x0

    .line 849
    .local v6, "location":Landroid/location/Location;
    const-string v10, "passive"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 850
    const-string v10, "passive"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 857
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    .line 858
    .local v4, "lng":D
    const-wide/16 v2, 0x0

    .line 860
    .local v2, "lat":D
    if-eqz v6, :cond_1

    .line 861
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 862
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 865
    :cond_1
    iget-object v10, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v11, "LOCKSCREEN_WEATHER_DATETIME"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 866
    .local v9, "wString":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 867
    new-instance v7, Lorg/joda/time/DateTime;

    invoke-direct {v7, v9}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 868
    .local v7, "prevDateTime":Lorg/joda/time/DateTime;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 869
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fetchWeather(DD)V

    .line 881
    .end local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    :goto_1
    return-void

    .line 851
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v9    # "wString":Ljava/lang/String;
    :cond_2
    const-string v10, "network"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 852
    const-string v10, "network"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    goto :goto_0

    .line 853
    :cond_3
    const-string v10, "gps"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 854
    const-string v10, "gps"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    goto :goto_0

    .line 872
    .restart local v2    # "lat":D
    .restart local v4    # "lng":D
    .restart local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    .restart local v9    # "wString":Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v12, "LOCKSCREEN_WEATHER_JSON"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseWeather(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Weather;

    move-result-object v8

    .line 873
    .local v8, "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    invoke-direct {p0, v8}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 874
    .end local v8    # "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 879
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    :cond_5
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->fetchWeather(DD)V

    goto :goto_1
.end method


# virtual methods
.method public closeDrawer(Z)V
    .locals 2
    .param p1, "animaion"    # Z

    .prologue
    const/4 v1, 0x0

    .line 962
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, v1, v1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    .line 963
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 964
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 965
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 1009
    invoke-virtual {p0, v0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->overridePendingTransition(II)V

    .line 1010
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->closeDrawer(Z)V

    .line 1081
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0, v2, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->overridePendingTransition(II)V

    .line 145
    const v2, 0x7f04003a

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "it":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->finish()V

    .line 154
    .end local v1    # "it":Landroid/content/Intent;
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->receiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_RESET"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->vibrator:Landroid/os/Vibrator;

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    .line 169
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pm:Landroid/content/pm/PackageManager;

    .line 171
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 172
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->keyguardManager:Landroid/app/KeyguardManager;

    .line 174
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initPager()V

    .line 175
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initDrawer()V

    .line 177
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1065
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1066
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1069
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 992
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 994
    if-eqz p1, :cond_0

    .line 995
    const-string v2, "refresh_wallpaper"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 996
    .local v1, "refreshWallpaper":Z
    if-eqz v1, :cond_0

    .line 998
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v1    # "refreshWallpaper":Z
    :cond_0
    :goto_0
    return-void

    .line 999
    .restart local v1    # "refreshWallpaper":Z
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1014
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1015
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1019
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1021
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->closeDrawer(Z)V

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$27;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$27;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->banner:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CASHWALK_REWARD_CASH"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1039
    .local v0, "defaultViralCash":I
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->banner:Landroid/widget/ImageView;

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 1041
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->banner:Landroid/widget/ImageView;

    const v2, 0x7f0201e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1045
    .end local v0    # "defaultViralCash":I
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1046
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->keyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_4

    .line 1049
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1050
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1051
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1061
    :goto_0
    return-void

    .line 1053
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1054
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1057
    :cond_4
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->keyguardManager:Landroid/app/KeyguardManager;

    .line 1058
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1059
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1073
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1074
    return-void
.end method

.method public openDrawer()V
    .locals 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 959
    return-void
.end method

.method public shareStat()V
    .locals 4

    .prologue
    .line 986
    new-instance v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;

    sget-object v1, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_LOCKSCREEN:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1003bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    .line 987
    .local v0, "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->show()V

    .line 988
    return-void
.end method
