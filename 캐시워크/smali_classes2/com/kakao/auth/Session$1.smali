.class Lcom/kakao/auth/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/Session;->requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/kakao/auth/authorization/AuthorizationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/Session;

.field final synthetic val$reqType:Lcom/kakao/auth/Session$RequestType;


# direct methods
.method constructor <init>(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$RequestType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    iput-object p2, p0, Lcom/kakao/auth/Session$1;->val$reqType:Lcom/kakao/auth/Session$RequestType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v6, 0x0

    .line 555
    .local v6, "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    iget-object v1, p0, Lcom/kakao/auth/Session$1;->val$reqType:Lcom/kakao/auth/Session$RequestType;

    invoke-static {v0, v1}, Lcom/kakao/auth/Session;->access$302(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$RequestType;)Lcom/kakao/auth/Session$RequestType;

    .line 558
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v0}, Lcom/kakao/auth/Session;->access$300(Lcom/kakao/auth/Session;)Lcom/kakao/auth/Session$RequestType;

    move-result-object v0

    sget-object v1, Lcom/kakao/auth/Session$RequestType;->GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    if-ne v0, v1, :cond_0

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "refreshToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v0}, Lcom/kakao/auth/Session;->access$400(Lcom/kakao/auth/Session;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "authCode":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v0}, Lcom/kakao/auth/Session;->access$600(Lcom/kakao/auth/Session;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v1}, Lcom/kakao/auth/Session;->access$700(Lcom/kakao/auth/Session;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v2}, Lcom/kakao/auth/Session;->access$800(Lcom/kakao/auth/Session;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v5}, Lcom/kakao/auth/Session;->access$900(Lcom/kakao/auth/Session;)Lcom/kakao/auth/ApprovalType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kakao/auth/ApprovalType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/kakao/auth/api/AuthApi;->requestAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    :try_end_0
    .catch Lcom/kakao/network/exception/ResponseStatusError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 581
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v0, v6}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    move-object v7, v6

    .line 583
    .end local v3    # "authCode":Ljava/lang/String;
    .end local v4    # "refreshToken":Ljava/lang/String;
    .end local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .local v7, "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    :goto_1
    return-object v7

    .line 562
    .end local v7    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v0}, Lcom/kakao/auth/Session;->access$500(Lcom/kakao/auth/Session;)Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getRefreshToken()Ljava/lang/String;
    :try_end_1
    .catch Lcom/kakao/network/exception/ResponseStatusError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 563
    .restart local v4    # "refreshToken":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "authCode":Ljava/lang/String;
    goto :goto_0

    .line 568
    .end local v3    # "authCode":Ljava/lang/String;
    .end local v4    # "refreshToken":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 569
    .local v8, "e":Lcom/kakao/network/exception/ResponseStatusError;
    :try_start_2
    invoke-virtual {v8}, Lcom/kakao/network/exception/ResponseStatusError;->getHttpStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 575
    invoke-virtual {v8}, Lcom/kakao/network/exception/ResponseStatusError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAccessTokenErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 581
    :goto_2
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v0, v6}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .end local v8    # "e":Lcom/kakao/network/exception/ResponseStatusError;
    :goto_3
    move-object v7, v6

    .line 583
    .end local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v7    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_1

    .line 572
    .end local v7    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v8    # "e":Lcom/kakao/network/exception/ResponseStatusError;
    :pswitch_0
    :try_start_3
    invoke-virtual {v8}, Lcom/kakao/network/exception/ResponseStatusError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAccessTokenOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v6

    .line 573
    goto :goto_2

    .line 578
    .end local v8    # "e":Lcom/kakao/network/exception/ResponseStatusError;
    :catch_1
    move-exception v9

    .line 579
    .local v9, "ee":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAccessTokenErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 581
    iget-object v0, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v0, v6}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    goto :goto_3

    .end local v9    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kakao/auth/Session$1;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v1, v6}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    throw v0

    .line 569
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/kakao/auth/Session$1;->call()Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method
