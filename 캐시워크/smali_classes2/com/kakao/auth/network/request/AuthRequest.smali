.class public abstract Lcom/kakao/auth/network/request/AuthRequest;
.super Ljava/lang/Object;
.source "AuthRequest.java"


# static fields
.field protected static final GET:Ljava/lang/String; = "GET"

.field protected static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final extraHeaders:Landroid/os/Bundle;

.field private final extraParams:Landroid/os/Bundle;

.field private final redirectURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "redirectURI"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraParams:Landroid/os/Bundle;

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraHeaders:Landroid/os/Bundle;

    .line 33
    iput-object p1, p0, Lcom/kakao/auth/network/request/AuthRequest;->appKey:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/kakao/auth/network/request/AuthRequest;->redirectURI:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraHeaders()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraHeaders:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtraParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->redirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRequestCode()I
.end method

.method public putExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraHeaders:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public putExtraParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kakao/auth/network/request/AuthRequest;->extraParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
