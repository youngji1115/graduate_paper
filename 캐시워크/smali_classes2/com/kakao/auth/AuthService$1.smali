.class final Lcom/kakao/auth/AuthService$1;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/AuthService;->requestShowAgeAuthDialog(Lcom/kakao/auth/callback/AccountResponseCallback;Landroid/os/Bundle;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ageAuthParams:Landroid/os/Bundle;

.field final synthetic val$useSmsReceiver:Z


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 189
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Ljava/lang/Integer;>;"
    iput-object p2, p0, Lcom/kakao/auth/AuthService$1;->val$ageAuthParams:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/kakao/auth/AuthService$1;->val$useSmsReceiver:Z

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kakao/auth/AuthService$1;->val$ageAuthParams:Landroid/os/Bundle;

    iget-boolean v1, p0, Lcom/kakao/auth/AuthService$1;->val$useSmsReceiver:Z

    invoke-static {v0, v1}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/os/Bundle;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/kakao/auth/AuthService$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
