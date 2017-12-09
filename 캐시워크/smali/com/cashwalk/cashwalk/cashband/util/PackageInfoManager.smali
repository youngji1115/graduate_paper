.class public Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;
.super Ljava/lang/Object;
.source "PackageInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;
    }
.end annotation


# static fields
.field public static final BAND_NOTIFICATION_DISABLED:I = 0x0

.field public static final BAND_NOTIFICATION_ENABLED:I = 0x1

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

.field private mDefaultApp:[Ljava/lang/String;

.field private final mFaceBookPackageName:Ljava/lang/String;

.field private final mKakaoPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "com.kakao.talk"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mKakaoPackageName:Ljava/lang/String;

    .line 36
    const-string v0, "com.facebook.katana"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mFaceBookPackageName:Ljava/lang/String;

    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\uce74\uce74\uc624\ud1a1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\ud398\uc774\uc2a4\ubd81"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\uba54\uc2dc\uc9c0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\uc804\ud654"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDefaultApp:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->isNotificationEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNotificationEnabled(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    const-string v11, "appops"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 128
    .local v4, "mAppOps":Landroid/app/AppOpsManager;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 130
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 132
    .local v6, "uid":I
    const/4 v1, 0x0

    .line 136
    .local v1, "appOpsClass":Ljava/lang/Class;
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v8, v11, :cond_0

    .line 137
    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 140
    :cond_0
    const-string v8, "checkOpNoThrow"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v1, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 142
    .local v2, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string v8, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 143
    .local v5, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 145
    .local v7, "value":I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    aput-object p1, v8, v11

    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    .line 158
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v7    # "value":I
    :goto_0
    return v8

    .restart local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .restart local v7    # "value":I
    :cond_1
    move v8, v10

    .line 145
    goto :goto_0

    .line 147
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v7    # "value":I
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move v8, v10

    .line 158
    goto :goto_0

    .line 149
    :catch_1
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAllList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectAllAppInfo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoFromAppName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectAppInfoFromName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCallApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    .prologue
    .line 268
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;-><init>(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 301
    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    return-void
.end method

.method public getDefaultApps()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDefaultApp:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDefaultApp:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAppInfoFromAppName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 251
    .local v0, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    .end local v0    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    :cond_2
    return-object v3
.end method

.method public getDefaultMessageApp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 312
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 313
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "msgAppPackage":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 315
    .end local v3    # "msgAppPackage":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sms_default_application"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "defApp":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 317
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 318
    .local v1, "iIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 319
    .local v2, "mInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .restart local v3    # "msgAppPackage":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNotiEnabledApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    .prologue
    .line 51
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;

    invoke-direct {v0, p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;-><init>(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method public insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->insertAppInfo(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 171
    return-void
.end method

.method public isAppDBEmpty()Z
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectAllAppInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultApps()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 206
    new-instance v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 207
    .local v1, "kakao":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    const-string/jumbo v3, "\uce74\uce74\uc624\ud1a1"

    iput-object v3, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    .line 208
    const-string v3, "com.kakao.talk"

    iput-object v3, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 209
    iput v4, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 210
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 213
    new-instance v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 214
    .local v0, "facebook":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    const-string/jumbo v3, "\ud398\uc774\uc2a4\ubd81"

    iput-object v3, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    .line 215
    const-string v3, "com.facebook.katana"

    iput-object v3, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 216
    iput v4, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 217
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 220
    new-instance v3, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$2;-><init>(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)V

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getCallApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V

    .line 234
    new-instance v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 235
    .local v2, "msgApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    const-string/jumbo v3, "\uba54\uc2dc\uc9c0"

    iput-object v3, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getDefaultMessageApp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 237
    iput v4, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 238
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 239
    return-void
.end method

.method public updateAppInfo(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->updateAppInfo(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 184
    return-void
.end method

.method public updateAppInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    .line 188
    new-instance v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 189
    .local v0, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    iput-object p1, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 191
    if-eqz p2, :cond_0

    .line 192
    const/4 v1, 0x1

    iput v1, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->mDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->updateAppInfo(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 198
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    goto :goto_0
.end method
