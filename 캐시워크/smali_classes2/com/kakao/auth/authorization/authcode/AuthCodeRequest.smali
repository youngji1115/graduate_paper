.class public final Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
.super Lcom/kakao/auth/network/request/AuthRequest;
.source "AuthCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "redirectURI"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p2, p3}, Lcom/kakao/auth/network/request/AuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static needProjectLogin(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    const-string v0, "approval_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "approval_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kakao/auth/ApprovalType;->PROJECT:Lcom/kakao/auth/ApprovalType;

    invoke-virtual {v1}, Lcom/kakao/auth/ApprovalType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIntent(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;)Landroid/content/Intent;
    .locals 6
    .param p1, "command"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++ Auth code request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$1;->$SwitchMap$com$kakao$auth$authorization$authcode$AuthCodeRequest$Command:[I

    invoke-virtual {p1}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->needProjectLogin(Landroid/os/Bundle;)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kakao/util/helper/TalkProtocol;->createLoggedInActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->needProjectLogin(Landroid/os/Bundle;)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kakao/util/helper/TalkProtocol;->createLoggedOutActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->needProjectLogin(Landroid/os/Bundle;)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kakao/util/helper/StoryProtocol;->createLoggedInActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public needsInternetPermission()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
