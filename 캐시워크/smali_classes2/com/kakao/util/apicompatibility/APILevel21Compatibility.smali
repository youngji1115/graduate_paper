.class public Lcom/kakao/util/apicompatibility/APILevel21Compatibility;
.super Lcom/kakao/util/apicompatibility/APILevel19Compatibility;
.source "APILevel21Compatibility.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kakao/util/apicompatibility/APILevel19Compatibility;-><init>()V

    return-void
.end method


# virtual methods
.method public removeCookie(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 18
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 21
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "cookieForDomain":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "cookiesForDomain":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v4, v3, v6

    .line 28
    .local v4, "currentCookie":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "++ currentCookie : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 29
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "cookieNameAndValue":[Ljava/lang/String;
    array-length v9, v2

    if-lez v9, :cond_1

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=;expires=Web, 18 Mar 2010 09:00:01 GMT;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "revisedCookie":Ljava/lang/String;
    invoke-virtual {v1, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .end local v5    # "revisedCookie":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 35
    .end local v2    # "cookieNameAndValue":[Ljava/lang/String;
    .end local v4    # "currentCookie":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0
.end method

.method public removeCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 44
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "cookieForDomain":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "cookiesForDomain":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v4, v3, v6

    .line 51
    .local v4, "currentCookie":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "++ currentCookie : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 52
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "cookieNameAndValue":[Ljava/lang/String;
    array-length v9, v2

    if-lez v9, :cond_1

    aget-object v9, v2, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=;expires=Web, 18 Mar 2010 09:00:01 GMT;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "revisedCookie":Ljava/lang/String;
    invoke-virtual {v1, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v5    # "revisedCookie":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "cookieNameAndValue":[Ljava/lang/String;
    .end local v4    # "currentCookie":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0
.end method
