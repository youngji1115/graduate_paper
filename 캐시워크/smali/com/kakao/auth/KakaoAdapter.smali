.class public abstract Lcom/kakao/auth/KakaoAdapter;
.super Ljava/lang/Object;
.source "KakaoAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;
.end method

.method public getSessionConfig()Lcom/kakao/auth/ISessionConfig;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kakao/auth/KakaoAdapter$1;

    invoke-direct {v0, p0}, Lcom/kakao/auth/KakaoAdapter$1;-><init>(Lcom/kakao/auth/KakaoAdapter;)V

    return-object v0
.end method
