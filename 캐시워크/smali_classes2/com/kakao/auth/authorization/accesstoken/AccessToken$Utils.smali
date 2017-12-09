.class Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;
.super Ljava/lang/Object;
.source "AccessToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/accesstoken/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;->xorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static xorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "com.kakao.api"

    invoke-static {p0, v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;->xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 371
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v8

    .line 387
    :goto_0
    return-object v7

    .line 375
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 376
    .local v2, "keys":[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 378
    .local v5, "msg":[C
    array-length v4, v5

    .line 379
    .local v4, "ml":I
    array-length v3, v2

    .line 380
    .local v3, "kl":I
    new-array v6, v4, [C

    .line 382
    .local v6, "newMsg":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 383
    aget-char v7, v5, v1

    rem-int v9, v1, v3

    aget-char v9, v2, v9

    xor-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v6, v1

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    .end local v2    # "keys":[C
    .end local v3    # "kl":I
    .end local v4    # "ml":I
    .end local v5    # "msg":[C
    .end local v6    # "newMsg":[C
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v7, v8

    .line 387
    goto :goto_0
.end method
