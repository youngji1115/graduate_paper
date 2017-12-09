.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenReceiver"
.end annotation


# instance fields
.field private screenOff:Z

.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V
    .locals 1

    .prologue
    .line 471
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->screenOff:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 476
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 477
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 479
    iput-boolean v9, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->screenOff:Z

    .line 480
    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastScreenOff:J

    .line 482
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "LOCKSCREEN_OFF_DATETIME"

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 484
    .local v4, "offExpire":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    cmp-long v6, v4, v10

    if-eqz v6, :cond_0

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 485
    :cond_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "SETTINGS_SHOW_ON_LOCKSCREEN"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-gt v6, v7, :cond_2

    .line 490
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    .local v1, "ci":Landroid/content/Intent;
    :goto_0
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 497
    .local v3, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "ci":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "offExpire":J
    :cond_1
    :goto_1
    return-void

    .line 492
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "offExpire":J
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "ci":Landroid/content/Intent;
    goto :goto_0

    .line 498
    .restart local v3    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 499
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 502
    .end local v1    # "ci":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "offExpire":J
    :cond_3
    if-eqz v0, :cond_1

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 503
    iput-boolean v8, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;->screenOff:Z

    .line 504
    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastScreenOff:J

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenOffOnDiff:J

    goto :goto_1
.end method
