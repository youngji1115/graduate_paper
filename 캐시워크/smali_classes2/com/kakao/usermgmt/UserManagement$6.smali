.class final Lcom/kakao/usermgmt/UserManagement$6;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/UserManagement;->requestMe(Lcom/kakao/usermgmt/callback/MeResponseCallback;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/usermgmt/response/model/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$propertyKeys:Ljava/util/List;

.field final synthetic val$secureResource:Z


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 151
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/usermgmt/response/model/UserProfile;>;"
    iput-object p2, p0, Lcom/kakao/usermgmt/UserManagement$6;->val$propertyKeys:Ljava/util/List;

    iput-boolean p3, p0, Lcom/kakao/usermgmt/UserManagement$6;->val$secureResource:Z

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kakao/usermgmt/UserManagement$6;->val$propertyKeys:Ljava/util/List;

    iget-boolean v1, p0, Lcom/kakao/usermgmt/UserManagement$6;->val$secureResource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakao/usermgmt/api/UserApi;->requestMe(Ljava/util/List;Ljava/lang/Boolean;)Lcom/kakao/usermgmt/response/MeResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/usermgmt/response/MeResponse;->getUserProfile()Lcom/kakao/usermgmt/response/model/UserProfile;

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
    .line 151
    invoke-virtual {p0}, Lcom/kakao/usermgmt/UserManagement$6;->call()Lcom/kakao/usermgmt/response/model/UserProfile;

    move-result-object v0

    return-object v0
.end method
