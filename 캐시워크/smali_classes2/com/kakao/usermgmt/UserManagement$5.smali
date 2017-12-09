.class final Lcom/kakao/usermgmt/UserManagement$5;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/UserManagement;->requestUpdateProfile(Lcom/kakao/auth/ApiResponseCallback;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 128
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Ljava/lang/Long;>;"
    iput-object p2, p0, Lcom/kakao/usermgmt/UserManagement$5;->val$properties:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kakao/usermgmt/UserManagement$5;->val$properties:Ljava/util/Map;

    invoke-static {v0}, Lcom/kakao/usermgmt/api/UserApi;->requestUpdateProfile(Ljava/util/Map;)Lcom/kakao/usermgmt/response/UserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/usermgmt/response/UserResponse;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .line 128
    invoke-virtual {p0}, Lcom/kakao/usermgmt/UserManagement$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
