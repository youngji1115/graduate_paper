.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 360
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 362
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CASHWALK_LOCKSCREEN_NEW_ICON"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    sget-object v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->iv_navi_handle_new:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->iv_navi_handle_new:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CASHWALK_LOCKSCREEN_NEW_ICON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    :cond_1
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 345
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 11
    .param p1, "newState"    # I

    .prologue
    const v10, 0x7f020221

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 366
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    .line 369
    sget-boolean v2, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    .line 384
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "USER_ID"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "drawer_open"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_2
    :goto_2
    return-void

    .line 372
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "NICKNAME"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v6, 0x7f0902ec

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "POINT"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PROFILE_URL"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 377
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PROFILE_URL"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 379
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "PROFILE_URL"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 396
    .end local v1    # "path":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method
