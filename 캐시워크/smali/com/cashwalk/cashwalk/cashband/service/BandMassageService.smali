.class public Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;
.super Landroid/service/notification/NotificationListenerService;
.source "BandMassageService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

.field private mDefaultMsgPackage:Ljava/lang/String;

.field private final mFaceBookPackageName:Ljava/lang/String;

.field private final mKakaoPackageName:Ljava/lang/String;

.field private mNotiMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 31
    const-string v0, "com.kakao.talk"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mKakaoPackageName:Ljava/lang/String;

    .line 32
    const-string v0, "com.facebook.katana"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mFaceBookPackageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private kitkatMsg(Landroid/service/notification/StatusBarNotification;)V
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "notiPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 80
    .local v3, "notification":Landroid/app/Notification;
    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 82
    .local v0, "extras":Landroid/os/Bundle;
    const-string v8, "android.title"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "title":Ljava/lang/String;
    const-string v8, "android.text"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 84
    .local v6, "text":Ljava/lang/CharSequence;
    const-string v8, "android.subText"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 86
    .local v5, "subText":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[notification] Title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[notification] notiPackageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[notification] Text:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[notification] Sub Text:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, ""

    .line 93
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v5, ""

    .line 96
    :cond_2
    const-string v4, ""

    .line 98
    .local v4, "resultMsg":Ljava/lang/String;
    const-string v8, "com.kakao.talk"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[KakaoTalk] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 120
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v8

    const/4 v9, 0x2

    .line 121
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p0, v9, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    const-string v8, "com.facebook.katana"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[Facebook] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 103
    :cond_5
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mDefaultMsgPackage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 104
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getDefaultMessageApp()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mDefaultMsgPackage:Ljava/lang/String;

    .line 107
    :cond_6
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mDefaultMsgPackage:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_0

    .line 123
    :cond_7
    move-object v1, v4

    .line 124
    .local v1, "finalMsg":Ljava/lang/String;
    new-instance v8, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v8, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;

    invoke-direct {v9, p0, v1}, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;-><init>(Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "attachBaseContext: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "getActiveNotifications: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 43
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    .line 44
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .line 45
    return-void
.end method

.method public onListenerConnected()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "onListenerConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 156
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "onListenerDisconnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 162
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 51
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "notiPkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    if-nez v2, :cond_0

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->mPackageInfoManager:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    move-result-object v0

    .line 58
    .local v0, "appInfo":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    if-nez v2, :cond_3

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disable app || appInfo is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "appInfo":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_2
    :goto_0
    return-void

    .line 63
    .restart local v0    # "appInfo":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    .line 64
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->kitkatMsg(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v2

    const/4 v3, 0x2

    const-string/jumbo v4, "\uba54\uc2dc\uc9c0\uac00 \ub3c4\ucc29\ud588\uc2b5\ub2c8\ub2e4."

    .line 68
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
