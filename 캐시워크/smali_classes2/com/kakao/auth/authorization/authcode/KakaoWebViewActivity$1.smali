.class Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;
.super Ljava/lang/Object;
.source "KakaoWebViewActivity.java"

# interfaces
.implements Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->registerSmsReceiverIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;


# direct methods
.method constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteSms(Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 348
    const-string v1, "++ onCompleteSms(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:insertSms(\'%s\')"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++ command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$1;->this$0:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;

    invoke-static {v1}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->access$400(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 354
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
