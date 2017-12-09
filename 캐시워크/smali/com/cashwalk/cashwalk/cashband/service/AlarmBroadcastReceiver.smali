.class public Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmBroadcastReceiver.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# static fields
.field public static isLaunched:Z = false

.field public static final tempKey:Ljava/lang/String; = "TEMP_KEY"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

.field private pref:Landroid/content/SharedPreferences;

.field private saveString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->isLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;)Lcom/cashwalk/cashwalk/util/BandDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    return-object v0
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "err"    # I

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connection failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TEMP_KEY"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 37
    const-string v1, "ALARM_TAG"

    const-string v2, "AlarmBroadcastReceiver - onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sput-boolean v3, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->isLaunched:Z

    .line 40
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->pref:Landroid/content/SharedPreferences;

    .line 42
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CASHBAND_SETTING_SELECT_AUTO_HEART"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 44
    .local v0, "isAutoHeart":Z
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->pref:Landroid/content/SharedPreferences;

    const-string v2, "TEMP_KEY"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connection..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 53
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 4
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connection success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    .line 62
    new-instance v1, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    .line 63
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->deleteHeartIsSend()V

    .line 64
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->deleteSleepIsSend()V

    .line 66
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TEMP_KEY"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->saveString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->updateHeartData()V

    .line 71
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getBandTimeSync()V

    .line 72
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWeather()V

    .line 73
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver$1;-><init>(Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;)V

    invoke-virtual {p1, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getDailyData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 79
    return-void
.end method
