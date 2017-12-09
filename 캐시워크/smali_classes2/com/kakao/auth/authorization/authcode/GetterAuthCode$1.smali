.class Lcom/kakao/auth/authorization/authcode/GetterAuthCode$1;
.super Landroid/os/ResultReceiver;
.source "GetterAuthCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->requestWebviewAuth()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;


# direct methods
.method constructor <init>(Lcom/kakao/auth/authorization/authcode/GetterAuthCode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$1;->this$0:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "redirectUrl":Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, "kakaoException":Lcom/kakao/util/exception/KakaoException;
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$1;->this$0:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-virtual {v2, v1, v0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->onWebViewCompleted(Ljava/lang/String;Lcom/kakao/util/exception/KakaoException;)V

    .line 195
    return-void

    .line 188
    :pswitch_0
    const-string v2, "key.redirect.url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const-string v2, "key.exception"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "kakaoException":Lcom/kakao/util/exception/KakaoException;
    check-cast v0, Lcom/kakao/util/exception/KakaoException;

    .restart local v0    # "kakaoException":Lcom/kakao/util/exception/KakaoException;
    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
