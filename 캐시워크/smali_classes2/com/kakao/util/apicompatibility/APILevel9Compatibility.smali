.class public Lcom/kakao/util/apicompatibility/APILevel9Compatibility;
.super Lcom/kakao/util/apicompatibility/APICompatibility;
.source "APILevel9Compatibility.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kakao/util/apicompatibility/APICompatibility;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, "smsDisplayMessage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "pdus"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 72
    .local v1, "data":[Ljava/lang/Object;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 73
    .local v3, "pdu":Ljava/lang/Object;
    const-string v7, "legacy SMS implementation (before KitKat)"

    invoke-static {v7}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 74
    check-cast v3, [B

    .end local v3    # "pdu":Ljava/lang/Object;
    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v2

    .line 75
    .local v2, "message":Landroid/telephony/gsm/SmsMessage;
    if-nez v2, :cond_1

    .line 76
    const-string v5, "SMS message is null -- ABORT"

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    .line 83
    .end local v2    # "message":Landroid/telephony/gsm/SmsMessage;
    :cond_0
    return-object v4

    .line 80
    .restart local v2    # "message":Landroid/telephony/gsm/SmsMessage;
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public removeCookie(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 22
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 23
    .local v6, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 26
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "cookieForDomain":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "cookiesForDomain":[Ljava/lang/String;
    array-length v9, v3

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v4, v3, v7

    .line 33
    .local v4, "currentCookie":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "++ currentCookie : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 34
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "cookieNameAndValue":[Ljava/lang/String;
    array-length v10, v2

    if-lez v10, :cond_1

    .line 36
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=;expires=Web, 18 Mar 2010 09:00:01 GMT;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "revisedCookie":Ljava/lang/String;
    invoke-virtual {v1, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v5    # "revisedCookie":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 40
    .end local v2    # "cookieNameAndValue":[Ljava/lang/String;
    .end local v4    # "currentCookie":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method public removeCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 46
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 47
    .local v6, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 50
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "cookieForDomain":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "cookiesForDomain":[Ljava/lang/String;
    array-length v9, v3

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v4, v3, v7

    .line 57
    .local v4, "currentCookie":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "++ currentCookie : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 58
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "cookieNameAndValue":[Ljava/lang/String;
    array-length v10, v2

    if-lez v10, :cond_1

    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=;expires=Web, 18 Mar 2010 09:00:01 GMT;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "revisedCookie":Ljava/lang/String;
    invoke-virtual {v1, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v5    # "revisedCookie":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 64
    .end local v2    # "cookieNameAndValue":[Ljava/lang/String;
    .end local v4    # "currentCookie":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method
