.class public Lcom/kakao/auth/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/Session$RequestType;,
        Lcom/kakao/auth/Session$SessionState;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN_REQUEST:I = 0x2

.field public static final AGEAUTH_REDIRECT_URL_POSTFIX:Ljava/lang/String; = "://ageauth"

.field public static final AUTHORIZATION_CODE_REQUEST:I = 0x1

.field private static final DEFAULT_TOKEN_REQUEST_TIME_MILLIS:I = 0xa4cb80

.field public static final REDIRECT_URL_POSTFIX:Ljava/lang/String; = "://oauth"

.field public static final REDIRECT_URL_PREFIX:Ljava/lang/String; = "kakao"

.field private static final RETRY_TOKEN_REQUEST_TIME_MILLIS:I = 0x493e0

.field private static currentSession:Lcom/kakao/auth/Session;


# instance fields
.field private final INSTANCE_LOCK:Ljava/lang/Object;

.field private accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

.field private final alarmIntent:Landroid/app/PendingIntent;

.field private final appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

.field private final appKey:Ljava/lang/String;

.field private final approvalType:Lcom/kakao/auth/ApprovalType;

.field private final authTypes:[Lcom/kakao/auth/AuthType;

.field private authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

.field private final context:Landroid/content/Context;

.field private getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

.field private final redirectUri:Ljava/lang/String;

.field private volatile requestType:Lcom/kakao/auth/Session$RequestType;

.field private final sessionCallbackHandler:Landroid/os/Handler;

.field private final sessionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/auth/ISessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/kakao/auth/Session$SessionState;

.field private final tokenAlarmManager:Landroid/app/AlarmManager;


# direct methods
.method private varargs constructor <init>(Landroid/content/Context;Lcom/kakao/auth/ApprovalType;[Lcom/kakao/auth/AuthType;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "approvalType"    # Lcom/kakao/auth/ApprovalType;
    .param p3, "authTypes"    # [Lcom/kakao/auth/AuthType;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 455
    if-nez p1, :cond_0

    .line 456
    new-instance v0, Lcom/kakao/util/exception/KakaoException;

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->ILLEGAL_ARGUMENT:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "cannot create Session without Context."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iput-object p1, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    .line 460
    if-nez p2, :cond_1

    sget-object p2, Lcom/kakao/auth/ApprovalType;->INDIVIDUAL:Lcom/kakao/auth/ApprovalType;

    .end local p2    # "approvalType":Lcom/kakao/auth/ApprovalType;
    :cond_1
    iput-object p2, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    .line 461
    const-string v0, "com.kakao.sdk.AppKey"

    invoke-static {p1, v0}, Lcom/kakao/util/helper/Utility;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 463
    new-instance v0, Lcom/kakao/util/exception/KakaoException;

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->MISS_CONFIGURATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "need to declare %s in your AndroidManifest.xml"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "com.kakao.sdk.AppKey"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kakao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://oauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    .line 467
    if-eqz p3, :cond_3

    array-length v0, p3

    if-nez v0, :cond_4

    .line 468
    :cond_3
    invoke-static {}, Lcom/kakao/auth/AuthType;->values()[Lcom/kakao/auth/AuthType;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authTypes:[Lcom/kakao/auth/AuthType;

    .line 475
    :goto_0
    new-instance v0, Lcom/kakao/util/helper/SharedPreferencesCache;

    iget-object v1, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/kakao/util/helper/SharedPreferencesCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbackHandler:Landroid/os/Handler;

    .line 478
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/kakao/auth/Session;->tokenAlarmManager:Landroid/app/AlarmManager;

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kakao/auth/TokenAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->alarmIntent:Landroid/app/PendingIntent;

    .line 481
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-virtual {v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->reloadAll()V

    .line 482
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    invoke-static {}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 484
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-static {p1, v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->createFromCache(Landroid/content/Context;Lcom/kakao/util/helper/SharedPreferencesCache;)Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .line 485
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasValidAccessToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 493
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    return-void

    .line 469
    :cond_4
    array-length v0, p3

    if-ne v0, v3, :cond_5

    aget-object v0, p3, v5

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    if-ne v0, v1, :cond_5

    .line 470
    invoke-static {}, Lcom/kakao/auth/AuthType;->values()[Lcom/kakao/auth/AuthType;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authTypes:[Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 472
    :cond_5
    iput-object p3, p0, Lcom/kakao/auth/Session;->authTypes:[Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 487
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasRefreshToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 490
    :cond_7
    :try_start_2
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 491
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/kakao/auth/Session;J)V
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;
    .param p1, "x1"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kakao/auth/Session;->registerTokenManger(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kakao/auth/Session;)V
    .locals 0
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kakao/auth/Session;->deregisterTokenManger()V

    return-void
.end method

.method static synthetic access$300(Lcom/kakao/auth/Session;)Lcom/kakao/auth/Session$RequestType;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$RequestType;)Lcom/kakao/auth/Session$RequestType;
    .locals 0
    .param p0, "x0"    # Lcom/kakao/auth/Session;
    .param p1, "x1"    # Lcom/kakao/auth/Session$RequestType;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kakao/auth/Session;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kakao/auth/Session;)Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kakao/auth/Session;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kakao/auth/Session;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kakao/auth/Session;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kakao/auth/Session;)Lcom/kakao/auth/ApprovalType;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    return-object v0
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 660
    iget-object v1, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deregisterTokenManger()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/kakao/auth/Session;->tokenAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/kakao/auth/Session;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 775
    return-void
.end method

.method public static getAppCache()Lcom/kakao/util/helper/SharedPreferencesCache;
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    .line 313
    .local v0, "session":Lcom/kakao/auth/Session;
    iget-object v1, v0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    return-object v1
.end method

.method public static declared-synchronized getCurrentSession()Lcom/kakao/auth/Session;
    .locals 3

    .prologue
    .line 115
    const-class v1, Lcom/kakao/auth/Session;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not initialized. Call KakaoSDK#init first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 119
    :cond_0
    :try_start_1
    sget-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private final getRequestType()Lcom/kakao/auth/Session$RequestType;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    monitor-exit v1

    return-object v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getState()Lcom/kakao/auth/Session$SessionState;
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static varargs declared-synchronized initialize(Landroid/content/Context;Lcom/kakao/auth/ApprovalType;[Lcom/kakao/auth/AuthType;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "approvalType"    # Lcom/kakao/auth/ApprovalType;
    .param p2, "authTypes"    # [Lcom/kakao/auth/AuthType;

    .prologue
    .line 100
    const-class v1, Lcom/kakao/auth/Session;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;

    invoke-direct {v0}, Lcom/kakao/auth/Session;->clearCallbacks()V

    .line 102
    sget-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;

    invoke-virtual {v0}, Lcom/kakao/auth/Session;->close()V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/kakao/util/helper/SystemInfo;->initialize(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lcom/kakao/auth/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/kakao/auth/Session;-><init>(Landroid/content/Context;Lcom/kakao/auth/ApprovalType;[Lcom/kakao/auth/AuthType;)V

    sput-object v0, Lcom/kakao/auth/Session;->currentSession:Lcom/kakao/auth/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private internalClose(Lcom/kakao/util/exception/KakaoException;Z)V
    .locals 8
    .param p1, "kakaoException"    # Lcom/kakao/util/exception/KakaoException;
    .param p2, "forced"    # Z

    .prologue
    .line 671
    iget-object v7, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 673
    .local v1, "previous":Lcom/kakao/auth/Session$SessionState;
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 675
    invoke-static {}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 676
    invoke-static {}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->createEmptyToken()Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .line 677
    iget-object v2, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    iget-object v3, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakao/auth/Session;->onStateChange(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$RequestType;Lcom/kakao/util/exception/KakaoException;Z)V

    .line 678
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-virtual {v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->clearAll()V

    .line 684
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kakao/auth/Session;->removeCookiesForKakaoDomain(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    :goto_0
    return-void

    .line 678
    .end local v1    # "previous":Lcom/kakao/auth/Session$SessionState;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 685
    .restart local v1    # "previous":Lcom/kakao/auth/Session$SessionState;
    :catch_0
    move-exception v6

    .line 686
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private internalOpen(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V
    .locals 8
    .param p1, "authType"    # Lcom/kakao/auth/AuthType;
    .param p2, "callerActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 497
    invoke-direct {p0}, Lcom/kakao/auth/Session;->getState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v0

    .line 499
    .local v0, "currentState":Lcom/kakao/auth/Session$SessionState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++ currentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 500
    invoke-static {v0}, Lcom/kakao/auth/Session$SessionState;->access$000(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/kakao/auth/Session;->notifySessionState(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/util/exception/KakaoException;)V

    .line 538
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/kakao/auth/Session;->getRequestType()Lcom/kakao/auth/Session$RequestType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/kakao/auth/Session;->getRequestType()Lcom/kakao/auth/Session$RequestType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still doing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lcom/kakao/util/exception/KakaoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :try_start_1
    sget-object v2, Lcom/kakao/auth/Session$4;->$SwitchMap$com$kakao$auth$Session$SessionState:[I

    iget-object v4, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    invoke-virtual {v4}, Lcom/kakao/auth/Session$SessionState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 532
    new-instance v2, Lcom/kakao/util/exception/KakaoException;

    sget-object v4, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current session state is not possible to open. state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 534
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/kakao/util/exception/KakaoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Lcom/kakao/util/exception/KakaoException;
    invoke-direct {p0, v1, v7}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    goto :goto_0

    .line 515
    .end local v1    # "e":Lcom/kakao/util/exception/KakaoException;
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 516
    sget-object v2, Lcom/kakao/auth/Session$RequestType;->GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

    iput-object v2, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/kakao/auth/Session;->requestAuthCode(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 534
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 519
    :cond_2
    new-instance v2, Lcom/kakao/util/exception/KakaoException;

    sget-object v4, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v5, "can not request authorization code because appKey or redirectUri is invalid."

    invoke-direct {v2, v4, v5}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    goto :goto_1

    .line 523
    :pswitch_1
    iget-object v2, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v2}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasRefreshToken()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    sget-object v2, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    invoke-virtual {p0, v2}, Lcom/kakao/auth/Session;->requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 525
    :cond_3
    iget-object v2, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    invoke-virtual {v2}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->hasAuthorizationCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    sget-object v2, Lcom/kakao/auth/Session$RequestType;->GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    invoke-virtual {p0, v2}, Lcom/kakao/auth/Session;->requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 528
    :cond_4
    new-instance v2, Lcom/kakao/util/exception/KakaoException;

    sget-object v4, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v5, "can not request access token because both authorization code and refresh token are invalid."

    invoke-direct {v2, v4, v5}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifySessionState(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/util/exception/KakaoException;)V
    .locals 3
    .param p1, "newState"    # Lcom/kakao/auth/Session$SessionState;
    .param p2, "exception"    # Lcom/kakao/util/exception/KakaoException;

    .prologue
    .line 744
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 745
    .local v0, "dumpSessionCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/auth/ISessionCallback;>;"
    new-instance v1, Lcom/kakao/auth/Session$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/kakao/auth/Session$2;-><init>(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$SessionState;Ljava/util/List;Lcom/kakao/util/exception/KakaoException;)V

    .line 765
    .local v1, "runCallbacks":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/kakao/auth/Session;->sessionCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 766
    return-void
.end method

.method private onStateChange(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$RequestType;Lcom/kakao/util/exception/KakaoException;Z)V
    .locals 5
    .param p1, "previousState"    # Lcom/kakao/auth/Session$SessionState;
    .param p2, "newState"    # Lcom/kakao/auth/Session$SessionState;
    .param p3, "requestType"    # Lcom/kakao/auth/Session$RequestType;
    .param p4, "exception"    # Lcom/kakao/util/exception/KakaoException;
    .param p5, "forced"    # Z

    .prologue
    .line 727
    if-nez p5, :cond_1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    const-string v1, "Session State changed : %s -> %s, ex = %s, request_type = %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/kakao/util/exception/KakaoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object p3, v2, v0

    invoke-static {v1, v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 732
    invoke-static {p2}, Lcom/kakao/auth/Session$SessionState;->access$1000(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    if-ne p1, p2, :cond_0

    .line 737
    invoke-direct {p0, p2, p4}, Lcom/kakao/auth/Session;->notifySessionState(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/util/exception/KakaoException;)V

    .line 740
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/kakao/auth/Session;->notifySessionState(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/util/exception/KakaoException;)V

    goto :goto_0

    .line 730
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerTokenManger(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 769
    iget-object v0, p0, Lcom/kakao/auth/Session;->tokenAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/kakao/auth/Session;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 770
    iget-object v0, p0, Lcom/kakao/auth/Session;->tokenAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v6, p0, Lcom/kakao/auth/Session;->alarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 771
    return-void
.end method

.method private static removeCookiesForKakaoDomain(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    const-string v1, "kakao.com"

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    const-string v1, ".kakao.com"

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    const-string v1, "kakao.co.kr"

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    const-string v1, ".kakao.co.kr"

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    sget-object v1, Lcom/kakao/network/ServerProtocol;->AUTH_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    sget-object v1, Lcom/kakao/network/ServerProtocol;->AGE_AUTH_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v0

    sget-object v1, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/kakao/util/apicompatibility/APICompatibility;->removeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private requestAccessTokenInfo()V
    .locals 1

    .prologue
    .line 778
    new-instance v0, Lcom/kakao/auth/Session$3;

    invoke-direct {v0, p0}, Lcom/kakao/auth/Session$3;-><init>(Lcom/kakao/auth/Session;)V

    invoke-static {v0}, Lcom/kakao/auth/AuthService;->requestAccessTokenInfo(Lcom/kakao/network/callback/ResponseCallback;)V

    .line 800
    return-void
.end method

.method private requestAuthCode(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V
    .locals 4
    .param p1, "authType"    # Lcom/kakao/auth/AuthType;
    .param p2, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 541
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    iget-object v1, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .local v0, "authRequest":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    const-string v1, "approval_type"

    iget-object v2, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    invoke-virtual {v2}, Lcom/kakao/auth/ApprovalType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->putExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {v0, p1, p2}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->newInstance(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Lcom/kakao/auth/AuthType;Landroid/app/Activity;)Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    move-result-object v1

    iput-object v1, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    .line 544
    iget-object v1, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-virtual {v1, p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->setOnAuthorizationListener(Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;)V

    .line 545
    iget-object v1, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-virtual {v1}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->start()V

    .line 546
    return-void
.end method

.method private saveTokenToCache(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V
    .locals 2
    .param p1, "newToken"    # Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .prologue
    .line 703
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-virtual {p1, v0, v1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->saveAccessTokenToCache(Landroid/content/Context;Lcom/kakao/util/helper/SharedPreferencesCache;)V

    .line 706
    :cond_0
    return-void
.end method

.method private updateAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V
    .locals 2
    .param p1, "resultAccessToken"    # Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .prologue
    .line 438
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0, p1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->updateAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V

    .line 440
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-direct {p0, v0}, Lcom/kakao/auth/Session;->saveTokenToCache(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/kakao/auth/ISessionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/kakao/auth/ISessionCallback;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 641
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    monitor-exit v1

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAccessTokenInfo()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/kakao/auth/Session;->deregisterTokenManger()V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isOpenable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->implicitOpen()Z

    goto :goto_0

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/kakao/auth/Session;->requestAccessTokenInfo()V

    goto :goto_0
.end method

.method public checkAndImplicitOpen()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kakao/auth/Session;->implicitOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final checkState()Lcom/kakao/auth/Session$SessionState;
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    invoke-static {v0}, Lcom/kakao/auth/Session$SessionState;->access$000(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasValidAccessToken()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasRefreshToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 222
    invoke-static {}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 223
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 226
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    .line 188
    return-void
.end method

.method public generateAgeAuthRedirectUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kakao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://ageauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateRedirectUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kakao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://oauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTypes()[Lcom/kakao/auth/AuthType;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/kakao/auth/Session;->authTypes:[Lcom/kakao/auth/AuthType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 628
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-virtual {v1, p1, p2, p3}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 632
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasValidAccessToken()Z
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasValidAccessToken()Z

    move-result v0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public implicitOpen()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isAvailableOpenByRefreshToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, v1, v1}, Lcom/kakao/auth/Session;->internalOpen(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAccessToken()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-static {}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->createEmptyToken()Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->updateAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V

    .line 450
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-direct {p0, v0}, Lcom/kakao/auth/Session;->saveTokenToCache(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAvailableOpenByRefreshToken()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kakao/auth/Session;->isOpenable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasRefreshToken()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->checkState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v0

    .line 264
    .local v0, "state":Lcom/kakao/auth/Session$SessionState;
    sget-object v1, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpenable()Z
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->checkState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v0

    .line 255
    .local v0, "state":Lcom/kakao/auth/Session$SessionState;
    sget-object v1, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isOpened()Z
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/kakao/auth/Session;->checkState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v0

    .line 245
    .local v0, "state":Lcom/kakao/auth/Session$SessionState;
    sget-object v1, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProjectLogin()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    sget-object v1, Lcom/kakao/auth/ApprovalType;->PROJECT:Lcom/kakao/auth/ApprovalType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 8
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    .line 386
    const/4 v6, 0x0

    .line 387
    .local v6, "resultAccessToken":Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    const/4 v4, 0x0

    .line 388
    .local v4, "exception":Lcom/kakao/util/exception/KakaoException;
    invoke-direct {p0}, Lcom/kakao/auth/Session;->getRequestType()Lcom/kakao/auth/Session$RequestType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session is closed during requesting access token. result will be ignored. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/kakao/auth/Session;->getState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .line 408
    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 410
    .local v1, "previousState":Lcom/kakao/auth/Session$SessionState;
    if-eqz v6, :cond_6

    .line 412
    invoke-static {}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 414
    invoke-direct {p0, v6}, Lcom/kakao/auth/Session;->updateAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V

    .line 415
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 416
    iget-object v2, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    iget-object v3, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/auth/Session;->onStateChange(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$RequestType;Lcom/kakao/util/exception/KakaoException;Z)V

    .line 429
    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 430
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    return-void

    .line 390
    .end local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    :cond_1
    if-nez p1, :cond_2

    .line 391
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "the result of access token request is null."

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getAccessToken()Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v6

    .line 395
    invoke-virtual {v6}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasValidAccessToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const/4 v6, 0x0

    .line 397
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "the result of access token request is invalid access token."

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 401
    :cond_4
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isAuthError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 404
    :cond_5
    new-instance v4, Lcom/kakao/util/exception/KakaoException;

    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->UNSPECIFIED_ERROR:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 418
    .restart local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    :cond_6
    :try_start_1
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 419
    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    invoke-static {v0}, Lcom/kakao/auth/Session$RequestType;->access$100(Lcom/kakao/auth/Session$RequestType;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    goto :goto_1

    .line 430
    .end local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    .end local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 422
    .restart local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    .restart local v4    # "exception":Lcom/kakao/util/exception/KakaoException;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    invoke-static {v0}, Lcom/kakao/auth/Session$RequestType;->access$200(Lcom/kakao/auth/Session$RequestType;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/kakao/util/exception/KakaoException;->getErrorType()Lcom/kakao/util/exception/KakaoException$ErrorType;

    move-result-object v0

    sget-object v2, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    if-ne v0, v2, :cond_8

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    goto/16 :goto_1

    .line 426
    :cond_8
    iget-object v2, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    iget-object v3, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/auth/Session;->onStateChange(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$RequestType;Lcom/kakao/util/exception/KakaoException;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public onAuthCodeCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 11
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    const/4 v10, 0x0

    .line 336
    const/4 v6, 0x0

    .line 337
    .local v6, "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    const/4 v7, 0x0

    .line 338
    .local v7, "exception":Lcom/kakao/util/exception/KakaoException;
    invoke-direct {p0}, Lcom/kakao/auth/Session;->getRequestType()Lcom/kakao/auth/Session$RequestType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 339
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session is closed during requesting authorization code. result will be ignored. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/kakao/auth/Session;->getState()Lcom/kakao/auth/Session$SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .line 364
    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 366
    .local v1, "previousState":Lcom/kakao/auth/Session$SessionState;
    if-eqz v6, :cond_6

    .line 367
    iput-object v6, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 368
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    iput-object v0, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    .line 370
    iget-object v2, p0, Lcom/kakao/auth/Session;->state:Lcom/kakao/auth/Session$SessionState;

    iget-object v3, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/auth/Session;->onStateChange(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$SessionState;Lcom/kakao/auth/Session$RequestType;Lcom/kakao/util/exception/KakaoException;Z)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 377
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {p0, v10, v10}, Lcom/kakao/auth/Session;->open(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 380
    :goto_1
    return-void

    .line 340
    .end local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    :cond_1
    if-nez p1, :cond_2

    .line 341
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "the result of authorization code request is null."

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getRedirectURL()Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, "resultRedirectURL":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getRedirectUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createFromRedirectedUri(Landroid/net/Uri;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v6

    .line 349
    invoke-virtual {v6}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->hasAuthorizationCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const/4 v6, 0x0

    .line 351
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v2, "the result of authorization code request does not have authorization code."

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 355
    :cond_3
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the result of authorization code request mismatched the registered redirect uri. msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto/16 :goto_0

    .line 360
    :cond_5
    new-instance v7, Lcom/kakao/util/exception/KakaoException;

    .end local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    .restart local v7    # "exception":Lcom/kakao/util/exception/KakaoException;
    goto/16 :goto_0

    .line 374
    .end local v8    # "resultRedirectURL":Ljava/lang/String;
    .restart local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v7, v0}, Lcom/kakao/auth/Session;->internalClose(Lcom/kakao/util/exception/KakaoException;Z)V

    .line 375
    monitor-exit v9

    goto :goto_1

    .line 377
    .end local v1    # "previousState":Lcom/kakao/auth/Session$SessionState;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAuthorizationCompletion(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 1
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isAuthorizationCodeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/auth/Session;->getterAuthCode:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    .line 612
    invoke-virtual {p0, p1}, Lcom/kakao/auth/Session;->onAuthCodeCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isAccessTokenRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    goto :goto_0
.end method

.method public open(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V
    .locals 0
    .param p1, "authType"    # Lcom/kakao/auth/AuthType;
    .param p2, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/kakao/auth/Session;->internalOpen(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 142
    return-void
.end method

.method public removeAccessToken()V
    .locals 3

    .prologue
    .line 709
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    iget-object v2, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-virtual {v0, v2}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->clearAccessToken(Lcom/kakao/util/helper/SharedPreferencesCache;)V

    .line 713
    :cond_0
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCallback(Lcom/kakao/auth/ISessionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/kakao/auth/ISessionCallback;

    .prologue
    .line 652
    iget-object v1, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 653
    if-eqz p1, :cond_0

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->sessionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRefreshToken()V
    .locals 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/kakao/auth/Session;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/kakao/auth/Session;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    iget-object v2, p0, Lcom/kakao/auth/Session;->appCache:Lcom/kakao/util/helper/SharedPreferencesCache;

    invoke-virtual {v0, v2}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->clearRefreshToken(Lcom/kakao/util/helper/SharedPreferencesCache;)V

    .line 721
    :cond_0
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "reqType"    # Lcom/kakao/auth/Session$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/Session$RequestType;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/kakao/auth/authorization/AuthorizationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 550
    .local v0, "service":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/kakao/auth/Session$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/auth/Session$1;-><init>(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$RequestType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 549
    .end local v0    # "service":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized requestAccessTokenByAuthCode(Lcom/kakao/auth/authorization/authcode/AuthorizationCode;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 6
    .param p1, "authorizationCode"    # Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kakao/auth/Session;->authorizationCode:Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    .line 590
    sget-object v0, Lcom/kakao/auth/Session$RequestType;->GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

    iput-object v0, p0, Lcom/kakao/auth/Session;->requestType:Lcom/kakao/auth/Session$RequestType;

    .line 591
    iget-object v0, p0, Lcom/kakao/auth/Session;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kakao/auth/Session;->appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/auth/Session;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kakao/auth/Session;->approvalType:Lcom/kakao/auth/ApprovalType;

    invoke-virtual {v5}, Lcom/kakao/auth/ApprovalType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/kakao/auth/api/AuthApi;->requestAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
