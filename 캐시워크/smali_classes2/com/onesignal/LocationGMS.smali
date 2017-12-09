.class Lcom/onesignal/LocationGMS;
.super Ljava/lang/Object;
.source "LocationGMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/LocationGMS$LocationHandlerThread;,
        Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;,
        Lcom/onesignal/LocationGMS$LocationUpdateListener;,
        Lcom/onesignal/LocationGMS$GoogleApiClientListener;,
        Lcom/onesignal/LocationGMS$LocationHandler;,
        Lcom/onesignal/LocationGMS$LocationPoint;
    }
.end annotation


# static fields
.field private static final TIME_BACKGROUND:I = 0x258

.field private static final TIME_FOREGROUND:I = 0x12c

.field private static classContext:Landroid/content/Context;

.field private static fallbackFailThread:Ljava/lang/Thread;

.field private static locationCoarse:Z

.field private static locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

.field private static locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

.field private static locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

.field private static mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

.field static requestPermission:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/onesignal/GoogleApiClientCompatProxy;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->receivedLocationPoint(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Lcom/onesignal/LocationGMS$LocationUpdateListener;)Lcom/onesignal/LocationGMS$LocationUpdateListener;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/LocationGMS$LocationUpdateListener;

    .prologue
    .line 56
    sput-object p0, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    return-object p0
.end method

.method private static declared-synchronized fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 3
    .param p0, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 216
    const-class v1, Lcom/onesignal/LocationGMS;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/onesignal/LocationGMS;->locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

    invoke-interface {v0, p0}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 217
    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit v1

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static fireFailedComplete()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 211
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->disconnect()V

    .line 213
    :cond_0
    return-void
.end method

.method private static getLastLocationTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "OS_LAST_LOCATION_TIME"

    const-wide/32 v2, -0x927c0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method static getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "promptLocation"    # Z
    .param p2, "handler"    # Lcom/onesignal/LocationGMS$LocationHandler;

    .prologue
    .line 115
    sput-object p0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    .line 116
    sput-object p2, Lcom/onesignal/LocationGMS;->locationHandler:Lcom/onesignal/LocationGMS$LocationHandler;

    .line 118
    sget-boolean v5, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v5, :cond_0

    .line 119
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 164
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, -0x1

    .line 125
    .local v0, "locationCoarsePermission":I
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "locationFinePermission":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 127
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v5}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 128
    const/4 v5, 0x1

    sput-boolean v5, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    .line 131
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_3

    .line 132
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 133
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 140
    :cond_3
    if-eqz v1, :cond_8

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 143
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    sput-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    .line 151
    :cond_4
    :goto_1
    sget-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    .line 152
    invoke-static {}, Lcom/onesignal/PermissionsActivity;->startPrompt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 158
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    if-eqz v0, :cond_4

    .line 148
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    sput-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_6
    if-nez v0, :cond_7

    .line 154
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 156
    :cond_7
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 162
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0
.end method

.method private static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 111
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static receivedLocationPoint(Landroid/location/Location;)V
    .locals 5
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    new-instance v0, Lcom/onesignal/LocationGMS$LocationPoint;

    invoke-direct {v0}, Lcom/onesignal/LocationGMS$LocationPoint;-><init>()V

    .line 225
    .local v0, "point":Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->accuracy:Ljava/lang/Float;

    .line 226
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->bg:Ljava/lang/Boolean;

    .line 227
    sget-boolean v1, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->type:Ljava/lang/Integer;

    .line 228
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->timeStamp:Ljava/lang/Long;

    .line 232
    sget-boolean v1, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v1, :cond_2

    .line 233
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    .line 234
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    .line 241
    :goto_2
    invoke-static {v0}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/onesignal/LocationGMS;->setLastLocationTime(J)V

    .line 243
    sget-object v1, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)V

    .line 244
    return-void

    :cond_0
    move v1, v3

    .line 226
    goto :goto_0

    :cond_1
    move v3, v2

    .line 227
    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    .line 238
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    goto :goto_2
.end method

.method static scheduleUpdate(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v6, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->getLastLocationTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 91
    .local v0, "lastTime":J
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x12c

    :goto_1
    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v2, v6

    .line 92
    .local v2, "minTime":J
    add-long v4, v0, v2

    .line 94
    .local v4, "scheduleTime":J
    invoke-static {p0, v4, v5}, Lcom/onesignal/SyncService;->scheduleServiceSyncTask(Landroid/content/Context;J)V

    goto :goto_0

    .line 91
    .end local v2    # "minTime":J
    .end local v4    # "scheduleTime":J
    :cond_1
    const/16 v6, 0x258

    goto :goto_1
.end method

.method private static setLastLocationTime(J)V
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 98
    sget-object v2, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "OS_LAST_LOCATION_TIME"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method private static startFallBackThread()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/LocationGMS$1;

    invoke-direct {v1}, Lcom/onesignal/LocationGMS$1;-><init>()V

    const-string v2, "OS_GMS_LOCATION_FALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    .line 204
    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method static startGetLocation()V
    .locals 5

    .prologue
    .line 169
    sget-object v3, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 192
    .local v1, "googleApiClientListener":Lcom/onesignal/LocationGMS$GoogleApiClientListener;
    :goto_0
    return-void

    .line 173
    .end local v1    # "googleApiClientListener":Lcom/onesignal/LocationGMS$GoogleApiClientListener;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onesignal/LocationGMS;->startFallBackThread()V

    .line 175
    sget-object v3, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Lcom/onesignal/LocationGMS$LocationHandlerThread;

    invoke-direct {v3}, Lcom/onesignal/LocationGMS$LocationHandlerThread;-><init>()V

    sput-object v3, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    .line 178
    :cond_1
    new-instance v1, Lcom/onesignal/LocationGMS$GoogleApiClientListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>(Lcom/onesignal/LocationGMS$1;)V

    .line 179
    .restart local v1    # "googleApiClientListener":Lcom/onesignal/LocationGMS$GoogleApiClientListener;
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v4, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 180
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    iget-object v4, v4, Lcom/onesignal/LocationGMS$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 185
    .local v0, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    new-instance v3, Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-direct {v3, v0}, Lcom/onesignal/GoogleApiClientCompatProxy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v3, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    .line 187
    sget-object v3, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v3}, Lcom/onesignal/GoogleApiClientCompatProxy;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Location permission exists but there was an error initializing: "

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    goto :goto_0
.end method
