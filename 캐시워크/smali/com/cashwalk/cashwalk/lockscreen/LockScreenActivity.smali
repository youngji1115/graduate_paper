.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;,
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;
    }
.end annotation


# static fields
.field public static isLockScreen:Z


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;

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
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->isLockScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->handler:Landroid/os/Handler;

    .line 119
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->isPageChanged:Z

    .line 123
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->motionFlag:Z

    .line 1096
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initNewsLayout(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->keyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->nicknameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->cashText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->profileImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->loggedOutHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->loggedInHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->refreshAppListFromDB()V

    return-void
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_lotto_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_shop_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->removeAppFromDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Lcom/astuetz/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/Weather;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->hideNavBar(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->isPageChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->isPageChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->showWeather()V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->refreshCash()V

    return-void
.end method

.method private addApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2a

    .line 589
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 590
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 591
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x6

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 592
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 596
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 598
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;

    invoke-direct {v5, p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    invoke-direct {v5, p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 636
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 637
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabScroll:Landroid/widget/HorizontalScrollView;

    const/16 v6, 0x42

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    .locals 4
    .param p1, "w"    # Lcom/cashwalk/cashwalk/util/network/model/Weather;

    .prologue
    .line 923
    if-eqz p1, :cond_4

    .line 924
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->getWeatherSkyIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 927
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherTitle:Landroid/widget/TextView;

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

    .line 928
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherDesc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902cc

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

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

    .line 930
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

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_RAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 941
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    const-string v1, "SKY_O14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_SNOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 935
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private fetchWeather(DD)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 870
    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 898
    :goto_0
    return-void

    .line 873
    :cond_1
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-static {p1, p2, p3, p4, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashwalkWeather(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 896
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getApplication()Landroid/app/Application;

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
    .line 968
    return-void
.end method

.method private initDrawer()V
    .locals 8

    .prologue
    const v7, 0x7f020221

    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 240
    const v1, 0x7f1001e1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    .line 241
    const v1, 0x7f1001e0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 242
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->profileImg:Landroid/widget/ImageView;

    .line 243
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->nicknameText:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f100378

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->cashText:Landroid/widget/TextView;

    .line 245
    const v1, 0x7f10037f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    .line 246
    const v1, 0x7f100380

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherImg:Landroid/widget/ImageView;

    .line 247
    const v1, 0x7f100381

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherTitle:Landroid/widget/TextView;

    .line 248
    const v1, 0x7f100382

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherDesc:Landroid/widget/TextView;

    .line 249
    const v1, 0x7f1002f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->closeDrawer:Landroid/widget/ImageButton;

    .line 250
    const v1, 0x7f10020b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scLotto:Landroid/widget/LinearLayout;

    .line 251
    const v1, 0x7f100219

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scStat:Landroid/widget/LinearLayout;

    .line 252
    const v1, 0x7f10037a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scShop:Landroid/widget/LinearLayout;

    .line 253
    const v1, 0x7f100215

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scRank:Landroid/widget/LinearLayout;

    .line 254
    const v1, 0x7f100385

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabScroll:Landroid/widget/HorizontalScrollView;

    .line 255
    const v1, 0x7f100388

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAdd:Landroid/widget/ImageButton;

    .line 256
    const v1, 0x7f100387

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    .line 257
    const v1, 0x7f100389

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->banner:Landroid/widget/ImageView;

    .line 258
    const v1, 0x7f100206

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->coupon:Landroid/widget/LinearLayout;

    .line 259
    const v1, 0x7f100205

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerNickname:Landroid/widget/LinearLayout;

    .line 260
    const v1, 0x7f100377

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->loggedInHeader:Landroid/widget/RelativeLayout;

    .line 261
    const v1, 0x7f100379

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->loggedOutHeader:Landroid/widget/LinearLayout;

    .line 262
    const v1, 0x7f100216

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    .line 263
    const v1, 0x7f100218

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    .line 264
    const v1, 0x7f10037c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    .line 265
    const v1, 0x7f10037b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_shop_new:Landroid/widget/ImageView;

    .line 266
    const v1, 0x7f10037e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    .line 267
    const v1, 0x7f10037d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_lotto_new:Landroid/widget/ImageView;

    .line 269
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_RANK_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_SHOP_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_shop_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_LOTTO_NEW_FLAG"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_lotto_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabScroll:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerNickname:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->coupon:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->banner:Landroid/widget/ImageView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initNewsLayout(Z)V

    .line 342
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 409
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->refreshAppListFromDB()V

    .line 411
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAdd:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$8;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scLotto:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$9;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scStat:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scShop:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$11;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->scRank:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->closeDrawer:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$13;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$13;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$14;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$14;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->nicknameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    const v4, 0x7f0902ec

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->cashText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 539
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

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

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 544
    :cond_0
    :goto_3
    return-void

    .line 273
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_shop_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_shop_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->iv_menu_lotto_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_lotto_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 541
    .restart local v0    # "path":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

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

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_3
.end method

.method private initNewsLayout(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const v6, 0x7f0f0020

    .line 644
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    .line 645
    :cond_0
    const v3, 0x7f100384

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    .line 646
    const v3, 0x7f100383

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    .line 647
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 648
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 649
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 650
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 651
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 653
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 654
    .local v1, "tabsLinearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 655
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 657
    .local v2, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 664
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 679
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$19;

    invoke-direct {v4, p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$19;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 711
    .end local v0    # "i":I
    .end local v1    # "tabsLinearLayout":Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private initPager()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 180
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->adapter:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 185
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 237
    return-void
.end method

.method private refreshAppListFromDB()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    const/16 v10, 0x2a

    .line 742
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 744
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 745
    .local v3, "ivInternet":Landroid/widget/ImageView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 746
    .local v7, "paramsInternet":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 747
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02014a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$21;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$21;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 757
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 758
    .local v2, "ivGallery":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 759
    .local v6, "paramsGallery":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 760
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020149

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$22;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$22;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 770
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 771
    .local v1, "ivCamera":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 772
    .local v5, "paramsCamera":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 773
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020148

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$23;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$23;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 784
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 785
    .local v0, "iv":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 786
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 787
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020147

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$24;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$24;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fabAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 797
    new-instance v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    new-array v9, v11, [Ljava/lang/Void;

    .line 824
    invoke-virtual {v8, v9}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 825
    return-void
.end method

.method private refreshCash()V
    .locals 2

    .prologue
    .line 547
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$15;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$15;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 585
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 586
    return-void
.end method

.method private removeAppFromDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 714
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 738
    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 739
    return-void
.end method

.method private showWeather()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 828
    iget-object v10, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v11, "SETTINGS_LOCKSCREEN_WEATHER"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 829
    const-string v10, "location"

    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 831
    .local v1, "lm":Landroid/location/LocationManager;
    const/4 v6, 0x0

    .line 832
    .local v6, "location":Landroid/location/Location;
    const-string v10, "passive"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 833
    const-string v10, "passive"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 840
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    .line 841
    .local v4, "lng":D
    const-wide/16 v2, 0x0

    .line 843
    .local v2, "lat":D
    if-eqz v6, :cond_1

    .line 844
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 845
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 848
    :cond_1
    iget-object v10, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v11, "LOCKSCREEN_WEATHER_DATETIME"

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 849
    .local v9, "wString":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 850
    new-instance v7, Lorg/joda/time/DateTime;

    invoke-direct {v7, v9}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 851
    .local v7, "prevDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v7, v12}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 852
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fetchWeather(DD)V

    .line 867
    .end local v1    # "lm":Landroid/location/LocationManager;
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "location":Landroid/location/Location;
    .end local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    .end local v9    # "wString":Ljava/lang/String;
    :goto_1
    return-void

    .line 834
    .restart local v1    # "lm":Landroid/location/LocationManager;
    .restart local v6    # "location":Landroid/location/Location;
    :cond_2
    const-string v10, "network"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 835
    const-string v10, "network"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    goto :goto_0

    .line 836
    :cond_3
    const-string v10, "gps"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 837
    const-string v10, "gps"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    goto :goto_0

    .line 855
    .restart local v2    # "lat":D
    .restart local v4    # "lng":D
    .restart local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    .restart local v9    # "wString":Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v12, "LOCKSCREEN_WEATHER_JSON"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseWeather(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Weather;

    move-result-object v8

    .line 856
    .local v8, "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    invoke-direct {p0, v8}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawWeather(Lcom/cashwalk/cashwalk/util/network/model/Weather;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 857
    .end local v8    # "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 862
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "prevDateTime":Lorg/joda/time/DateTime;
    :cond_5
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fetchWeather(DD)V

    goto :goto_1

    .line 865
    .end local v1    # "lm":Landroid/location/LocationManager;
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "location":Landroid/location/Location;
    .end local v9    # "wString":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->weatherLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public closeDrawer(Z)V
    .locals 2
    .param p1, "animaion"    # Z

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->newsTabs:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, v1, v1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    .line 949
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 950
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 951
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 993
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 994
    invoke-virtual {p0, v0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    .line 995
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->closeDrawer(Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v2, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    .line 143
    const v2, 0x7f04003a

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v1, "it":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->finish()V

    .line 152
    .end local v1    # "it":Landroid/content/Intent;
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_RESET"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->vibrator:Landroid/os/Vibrator;

    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    .line 167
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pm:Landroid/content/pm/PackageManager;

    .line 169
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 170
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->keyguardManager:Landroid/app/KeyguardManager;

    .line 172
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initPager()V

    .line 173
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initDrawer()V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1050
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1051
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1054
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 977
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 979
    if-eqz p1, :cond_0

    .line 980
    const-string v2, "refresh_wallpaper"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 981
    .local v1, "refreshWallpaper":Z
    if-eqz v1, :cond_0

    .line 983
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v1    # "refreshWallpaper":Z
    :cond_0
    :goto_0
    return-void

    .line 984
    .restart local v1    # "refreshWallpaper":Z
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 999
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1000
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1004
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1006
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->closeDrawer(Z)V

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$27;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1022
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->banner:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1023
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CASHWALK_REWARD_CASH"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1024
    .local v0, "defaultViralCash":I
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->banner:Landroid/widget/ImageView;

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1025
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 1026
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->banner:Landroid/widget/ImageView;

    const v2, 0x7f0201e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    .end local v0    # "defaultViralCash":I
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1031
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1032
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->keyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_4

    .line 1034
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1035
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1036
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1046
    :goto_0
    return-void

    .line 1038
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1039
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1042
    :cond_4
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->keyguardManager:Landroid/app/KeyguardManager;

    .line 1043
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1044
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->rl_background:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1058
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1059
    return-void
.end method

.method public openDrawer()V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 945
    return-void
.end method
