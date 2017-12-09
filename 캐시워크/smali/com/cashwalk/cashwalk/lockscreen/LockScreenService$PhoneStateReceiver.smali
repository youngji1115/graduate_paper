.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "state":Ljava/lang/String;
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Z)Z

    .line 468
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "state":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->access$202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
