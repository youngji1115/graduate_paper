.class public Lcom/kakao/auth/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final regex:Ljava/lang/String; = "(^\\[\ub4dc\ub9bc\uc2dc\ud050\ub9ac\ud2f0\\]).*\\[([0-9]{6})"


# instance fields
.field private listener:Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;


# direct methods
.method public constructor <init>(Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;)V
    .locals 0
    .param p1, "listener"    # Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kakao/auth/receiver/SmsReceiver;->listener:Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;

    .line 27
    return-void
.end method

.method private static parsePassCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, "passCode":Ljava/lang/String;
    const-string v3, "(^\\[\ub4dc\ub9bc\uc2dc\ud050\ub9ac\ud2f0\\]).*\\[([0-9]{6})"

    .line 56
    .local v3, "reg":Ljava/lang/String;
    const/16 v4, 0x6b

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 57
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 59
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    :cond_1
    move-object p0, v1

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v3, "SmsReceiver:onReceive()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/kakao/util/helper/log/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 34
    const-string v3, "BroadcastReceiver failed, no intent data to process."

    invoke-static {v3}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "SMS_RECEIVED"

    invoke-static {v3}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/kakao/util/apicompatibility/APICompatibility;->getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/kakao/util/apicompatibility/APICompatibility;->getSmsMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "smsDisplayMessage":Ljava/lang/String;
    invoke-static {v2}, Lcom/kakao/auth/receiver/SmsReceiver;->parsePassCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "passCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/kakao/auth/receiver/SmsReceiver;->listener:Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;

    invoke-interface {v3, v1}, Lcom/kakao/auth/receiver/SmsReceiver$ISmsReceiver;->onCompleteSms(Ljava/lang/String;)V

    goto :goto_0
.end method
