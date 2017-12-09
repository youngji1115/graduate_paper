.class public Lcom/kakao/auth/KakaoSDK$AlreadyInitializedException;
.super Ljava/lang/RuntimeException;
.source "KakaoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/KakaoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlreadyInitializedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
