.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$1;

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    .line 1199
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 1200
    .local v1, "now":Lorg/joda/time/DateTime;
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v2

    if-nez v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$MinuteBroadcastReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "steps"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)V

    .line 1206
    .end local v1    # "now":Lorg/joda/time/DateTime;
    :cond_0
    return-void
.end method
