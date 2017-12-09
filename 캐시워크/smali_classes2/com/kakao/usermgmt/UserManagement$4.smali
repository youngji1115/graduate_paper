.class final Lcom/kakao/usermgmt/UserManagement$4;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/UserManagement;->requestUpdateProfile(Lcom/kakao/auth/ApiResponseCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$profileImage:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;

.field final synthetic val$thumbnailImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Ljava/lang/Long;>;"
    iput-object p2, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$properties:Ljava/util/Map;

    iput-object p3, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$nickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$thumbnailImagePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$profileImage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$properties:Ljava/util/Map;

    .line 110
    .local v0, "userProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "userProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v0    # "userProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$properties:Ljava/util/Map;

    const-string v2, "nickname"

    iget-object v3, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$nickName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$properties:Ljava/util/Map;

    const-string v2, "thumbnail_image"

    iget-object v3, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$thumbnailImagePath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$properties:Ljava/util/Map;

    const-string v2, "profile_image"

    iget-object v3, p0, Lcom/kakao/usermgmt/UserManagement$4;->val$profileImage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v0}, Lcom/kakao/usermgmt/api/UserApi;->requestUpdateProfile(Ljava/util/Map;)Lcom/kakao/usermgmt/response/UserResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/usermgmt/response/UserResponse;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/kakao/usermgmt/UserManagement$4;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
