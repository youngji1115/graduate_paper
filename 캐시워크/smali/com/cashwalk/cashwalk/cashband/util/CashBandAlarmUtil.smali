.class public Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;
.super Ljava/lang/Object;
.source "CashBandAlarmUtil.java"


# static fields
.field public static final ALARM_TAG:Ljava/lang/String; = "ALARM_TAG"


# instance fields
.field private final ALARM_REQUEST_CODE:I

.field private final STANDARD_MIN:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->STANDARD_MIN:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->ALARM_REQUEST_CODE:I

    .line 28
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getTriggerTime()J
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 81
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 82
    .local v1, "time":Lorg/joda/time/DateTime;
    const-string v2, "mm"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "minute":I
    if-ge v0, v3, :cond_0

    .line 84
    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->withMinuteOfHour(I)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 90
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    return-wide v2

    .line 86
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->withMinuteOfHour(I)Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method private isOnAlarm()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cashwalk/cashwalk/cashband/service/RepeatAlarmBroadcastReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const/high16 v4, 0x20000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    .local v1, "sender":Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doCancel()V
    .locals 6

    .prologue
    .line 60
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 61
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cashwalk/cashwalk/cashband/service/RepeatAlarmBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 63
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 65
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 67
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    .local v2, "p":Landroid/content/SharedPreferences;
    const-string v5, "TEMP_KEY"

    const-string/jumbo v6, "\ub370\uc774\ud130 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "t":Ljava/lang/String;
    const-string v5, "ALARM_TAG"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v2    # "p":Landroid/content/SharedPreferences;
    .end local v4    # "t":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const-class v6, Lcom/cashwalk/cashwalk/cashband/service/RepeatAlarmBroadcastReceiver;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v8, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 42
    .local v3, "sender":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 44
    .local v0, "am":Landroid/app/AlarmManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->getTriggerTime()J

    move-result-wide v6

    .line 45
    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 57
    :goto_0
    return-void

    .line 49
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->getTriggerTime()J

    move-result-wide v6

    .line 50
    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
