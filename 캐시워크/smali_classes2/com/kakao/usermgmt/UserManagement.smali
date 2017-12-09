.class public Lcom/kakao/usermgmt/UserManagement;
.super Ljava/lang/Object;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAgeAuthInfo(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/auth/AuthService$AgeLimit;Ljava/util/List;)V
    .locals 2
    .param p1, "ageLimit"    # Lcom/kakao/auth/AuthService$AgeLimit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/callback/ResponseCallback",
            "<",
            "Lcom/kakao/usermgmt/response/AgeAuthResponse;",
            ">;",
            "Lcom/kakao/auth/AuthService$AgeLimit;",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "callback":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/usermgmt/response/AgeAuthResponse;>;"
    .local p2, "propertyKeyList":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/kakao/usermgmt/UserManagement$7;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/List;Lcom/kakao/auth/AuthService$AgeLimit;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 178
    return-void
.end method

.method public static requestLogout(Lcom/kakao/usermgmt/callback/LogoutResponseCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/kakao/usermgmt/callback/LogoutResponseCallback;

    .prologue
    .line 77
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$2;

    invoke-direct {v1, p0}, Lcom/kakao/usermgmt/UserManagement$2;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 83
    return-void
.end method

.method public static requestMe(Lcom/kakao/usermgmt/callback/MeResponseCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/kakao/usermgmt/callback/MeResponseCallback;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/kakao/usermgmt/UserManagement;->requestMe(Lcom/kakao/usermgmt/callback/MeResponseCallback;Ljava/util/List;Z)V

    .line 142
    return-void
.end method

.method public static requestMe(Lcom/kakao/usermgmt/callback/MeResponseCallback;Ljava/util/List;Z)V
    .locals 2
    .param p0, "callback"    # Lcom/kakao/usermgmt/callback/MeResponseCallback;
    .param p2, "secureResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/usermgmt/callback/MeResponseCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "propertyKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/kakao/usermgmt/UserManagement$6;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 157
    return-void
.end method

.method public static requestSignup(Lcom/kakao/auth/ApiResponseCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/ApiResponseCallback",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "callback":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<Ljava/lang/Long;>;"
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/usermgmt/UserManagement$1;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 70
    return-void
.end method

.method public static requestUnlink(Lcom/kakao/usermgmt/callback/UnLinkResponseCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/kakao/usermgmt/callback/UnLinkResponseCallback;

    .prologue
    .line 90
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$3;

    invoke-direct {v1, p0}, Lcom/kakao/usermgmt/UserManagement$3;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 96
    return-void
.end method

.method public static requestUpdateProfile(Lcom/kakao/auth/ApiResponseCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "thumbnailImagePath"    # Ljava/lang/String;
    .param p3, "profileImage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/ApiResponseCallback",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "callback":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<Ljava/lang/Long;>;"
    .local p4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v6

    new-instance v0, Lcom/kakao/usermgmt/UserManagement$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kakao/usermgmt/UserManagement$4;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 120
    return-void
.end method

.method public static requestUpdateProfile(Lcom/kakao/auth/ApiResponseCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/ApiResponseCallback",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "callback":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<Ljava/lang/Long;>;"
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/usermgmt/UserManagement$5;

    invoke-direct {v1, p0, p1}, Lcom/kakao/usermgmt/UserManagement$5;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 134
    return-void
.end method
