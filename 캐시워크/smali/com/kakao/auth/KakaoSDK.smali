.class public Lcom/kakao/auth/KakaoSDK;
.super Ljava/lang/Object;
.source "KakaoSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/KakaoSDK$AlreadyInitializedException;
    }
.end annotation


# static fields
.field private static volatile adapter:Lcom/kakao/auth/KakaoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/kakao/auth/KakaoSDK;->adapter:Lcom/kakao/auth/KakaoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter()Lcom/kakao/auth/KakaoAdapter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kakao/auth/KakaoSDK;->adapter:Lcom/kakao/auth/KakaoAdapter;

    return-object v0
.end method

.method public static declared-synchronized init(Lcom/kakao/auth/KakaoAdapter;)V
    .locals 7
    .param p0, "adapter"    # Lcom/kakao/auth/KakaoAdapter;

    .prologue
    .line 31
    const-class v4, Lcom/kakao/auth/KakaoSDK;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/kakao/auth/KakaoSDK;->adapter:Lcom/kakao/auth/KakaoAdapter;

    if-eqz v3, :cond_0

    .line 32
    new-instance v3, Lcom/kakao/auth/KakaoSDK$AlreadyInitializedException;

    invoke-direct {v3}, Lcom/kakao/auth/KakaoSDK$AlreadyInitializedException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 35
    :cond_0
    if-nez p0, :cond_1

    .line 36
    :try_start_1
    new-instance v3, Lcom/kakao/util/exception/KakaoException;

    sget-object v5, Lcom/kakao/util/exception/KakaoException$ErrorType;->MISS_CONFIGURATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v6, "adapter is null"

    invoke-direct {v3, v5, v6}, Lcom/kakao/util/exception/KakaoException;-><init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_1
    sput-object p0, Lcom/kakao/auth/KakaoSDK;->adapter:Lcom/kakao/auth/KakaoAdapter;

    .line 42
    invoke-virtual {p0}, Lcom/kakao/auth/KakaoAdapter;->getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/kakao/auth/IApplicationConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/kakao/auth/ISessionConfig;->getApprovalType()Lcom/kakao/auth/ApprovalType;

    move-result-object v0

    .line 44
    .local v0, "approvalType":Lcom/kakao/auth/ApprovalType;
    invoke-virtual {p0}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/kakao/auth/ISessionConfig;->getAuthTypes()[Lcom/kakao/auth/AuthType;

    move-result-object v1

    .line 45
    .local v1, "authtypes":[Lcom/kakao/auth/AuthType;
    invoke-static {v2, v0, v1}, Lcom/kakao/auth/Session;->initialize(Landroid/content/Context;Lcom/kakao/auth/ApprovalType;[Lcom/kakao/auth/AuthType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v4

    return-void
.end method
