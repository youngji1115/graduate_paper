.class Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;
.super Lcom/kakao/auth/KakaoAdapter;
.source "CashWalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/CashWalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KakaoSDKAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/kakao/auth/KakaoAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/CashWalkApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/CashWalkApp$1;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$2;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$2;-><init>(Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;)V

    return-object v0
.end method

.method public getSessionConfig()Lcom/kakao/auth/ISessionConfig;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$1;-><init>(Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;)V

    return-object v0
.end method
