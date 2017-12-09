.class public Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCallBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PHONE STATE"

.field private static mLastState:Ljava/lang/String;


# instance fields
.field private mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->sendMessage(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    .line 89
    invoke-static {p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, p2, v1, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 31
    const-string v0, "PHONE STATE"

    const-string v4, "onReceive()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 34
    .local v9, "pref":Landroid/content/SharedPreferences;
    const-string v0, "CASHBAND_CALL_NOTIFYCATION"

    invoke-interface {v9, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 35
    .local v8, "isCallNotify":Z
    if-nez v8, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "state":Ljava/lang/String;
    sget-object v0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mLastState:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sput-object v10, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mLastState:Ljava/lang/String;

    .line 49
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "incomingNumber":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    .line 55
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 57
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    .line 60
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iput-object v7, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    .line 68
    :cond_4
    invoke-static {p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->sendMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_5
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;-><init>(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    goto :goto_0
.end method
