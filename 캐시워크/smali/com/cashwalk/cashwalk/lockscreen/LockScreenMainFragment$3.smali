.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######## \uc561\uc158"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_2

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateBackground()V

    .line 239
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    if-nez v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    .line 243
    :cond_1
    return-void

    .line 185
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_SHOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const-string v3, "news"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/util/network/model/News;)V

    goto :goto_0

    .line 187
    :cond_3
    if-eqz v0, :cond_5

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_HIDE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    sget-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Lorg/joda/time/DateTime;

    move-result-object v3

    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREFERENCE_AD_PRIORITY"

    const-string v5, "ADMOB"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "adPriority":Ljava/lang/String;
    const/4 v2, 0x2

    .line 195
    .local v2, "priority":I
    const-string v3, "FB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    const/4 v2, 0x1

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v5, 0x7f090150

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v6, 0x7f0900a3

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;)V

    invoke-static {v3, v4, v5, v2, v6}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V

    goto/16 :goto_0

    .line 225
    .end local v1    # "adPriority":Ljava/lang/String;
    .end local v2    # "priority":I
    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_URL_OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showWebContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_6
    if-eqz v0, :cond_7

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_RAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 228
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02007d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 230
    :cond_7
    if-eqz v0, :cond_8

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_SNOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02008a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 233
    :cond_8
    if-eqz v0, :cond_0

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WEATHER_CLEAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020300

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
