.class public Lcom/kakao/util/apicompatibility/APILevel19Compatibility;
.super Lcom/kakao/util/apicompatibility/APILevel9Compatibility;
.source "APILevel19Compatibility.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kakao/util/apicompatibility/APILevel9Compatibility;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, "smsDisplayMessage":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 21
    .local v0, "message":Landroid/telephony/SmsMessage;
    const-string v5, "KitKat or newer"

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 22
    if-nez v0, :cond_1

    .line 23
    const-string v2, "SMS message is null -- ABORT"

    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    .line 30
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_0
    return-object v1

    .line 27
    .restart local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
