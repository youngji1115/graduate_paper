.class public Lcom/kakao/auth/authorization/accesstoken/AccessToken;
.super Lcom/kakao/auth/network/response/AuthResponse;
.source "AccessToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;,
        Lcom/kakao/auth/authorization/accesstoken/AccessToken$AndroidIdUtils;,
        Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;
    }
.end annotation


# static fields
.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

.field private static final CACHE_ACCESS_TOKEN:Ljava/lang/String; = "com.kakao.token.AccessToken"

.field private static final CACHE_ACCESS_TOKEN_EXPIRES_AT:Ljava/lang/String; = "com.kakao.token.AccessToken.ExpiresAt"

.field private static final CACHE_KAKAO_SECURE_MODE:Ljava/lang/String; = "com.kakao.token.KakaoSecureMode"

.field private static final CACHE_REFRESH_TOKEN:Ljava/lang/String; = "com.kakao.token.RefreshToken"

.field private static final CACHE_REFRESH_TOKEN_EXPIRES_AT:Ljava/lang/String; = "com.kakao.token.RefreshToken.ExpiresAt"

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static encryptor:Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accessTokenExpiresAt:Ljava/util/Date;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpiresAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->MIN_DATE:Ljava/util/Date;

    .line 63
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 64
    sget-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->MAX_DATE:Ljava/util/Date;

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 65
    sget-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->MIN_DATE:Ljava/util/Date;

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 6
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/AuthResponse;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    .line 167
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, ""

    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    .line 169
    new-instance v2, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    const-string v3, "No Search Element : access_token"

    invoke-direct {v2, v3}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Lcom/kakao/network/response/ResponseBody;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    .line 172
    const-string v2, "refresh_token"

    invoke-virtual {p1, v2}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "refresh_token"

    invoke-virtual {p1, v2}, Lcom/kakao/network/response/ResponseBody;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    .line 175
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "expires_in"

    invoke-virtual {p1, v4}, Lcom/kakao/network/response/ResponseBody;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 176
    .local v0, "expiredAt":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    .line 177
    sget-object v2, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->MAX_DATE:Ljava/util/Date;

    iput-object v2, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    .line 178
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "refreshToken"    # Ljava/lang/String;
    .param p3, "accessTokenExpiresAt"    # Ljava/util/Date;
    .param p4, "refreshTokenExpiresAt"    # Ljava/util/Date;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/kakao/auth/network/response/AuthResponse;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    .line 185
    iput-object p4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    .line 186
    return-void
.end method

.method public static createEmptyToken()Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v4, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public static createFromCache(Landroid/content/Context;Lcom/kakao/util/helper/SharedPreferencesCache;)Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 107
    const-string v10, "com.kakao.token.AccessToken"

    invoke-virtual {p1, v10}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "accessToken":Ljava/lang/String;
    const-string v10, "com.kakao.token.RefreshToken"

    invoke-virtual {p1, v10}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "refreshToken":Ljava/lang/String;
    invoke-static {p1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getLastSecureMode(Lcom/kakao/util/helper/SharedPreferencesCache;)Z

    move-result v7

    .line 113
    .local v7, "lastSecureMode":Z
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v10

    invoke-interface {v10}, Lcom/kakao/auth/ISessionConfig;->isSecureMode()Z

    move-result v3

    .line 116
    .local v3, "currentSecureMode":Z
    if-eqz v7, :cond_1

    .line 118
    move-object v5, v0

    .line 119
    .local v5, "encryptedAccessToken":Ljava/lang/String;
    move-object v6, v8

    .line 120
    .local v6, "encryptedRefreshToken":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 121
    :try_start_0
    invoke-static {p0, v5}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    if-eqz v6, :cond_1

    .line 124
    invoke-static {p0, v6}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .end local v5    # "encryptedAccessToken":Ljava/lang/String;
    .end local v6    # "encryptedRefreshToken":Ljava/lang/String;
    :cond_1
    if-eq v7, v3, :cond_4

    .line 130
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_5

    .line 133
    if-eqz v0, :cond_2

    .line 134
    invoke-static {p0, v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5    # "encryptedAccessToken":Ljava/lang/String;
    const-string v10, "com.kakao.token.AccessToken"

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v5    # "encryptedAccessToken":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 138
    invoke-static {p0, v8}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .restart local v6    # "encryptedRefreshToken":Ljava/lang/String;
    const-string v10, "com.kakao.token.RefreshToken"

    invoke-virtual {v2, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v6    # "encryptedRefreshToken":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v10, "com.kakao.token.KakaoSecureMode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v2}, Lcom/kakao/util/helper/SharedPreferencesCache;->save(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_1
    const-string v10, "com.kakao.token.AccessToken.ExpiresAt"

    invoke-virtual {p1, v10}, Lcom/kakao/util/helper/SharedPreferencesCache;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 161
    .local v1, "accessTokenExpiresAt":Ljava/util/Date;
    const-string v10, "com.kakao.token.RefreshToken.ExpiresAt"

    invoke-virtual {p1, v10}, Lcom/kakao/util/helper/SharedPreferencesCache;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 162
    .local v9, "refreshTokenExpiresAt":Ljava/util/Date;
    new-instance v10, Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-direct {v10, v0, v8, v1, v9}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v10

    .line 143
    .end local v1    # "accessTokenExpiresAt":Ljava/util/Date;
    .end local v9    # "refreshTokenExpiresAt":Ljava/util/Date;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_5
    if-eqz v0, :cond_6

    .line 144
    :try_start_1
    const-string v10, "com.kakao.token.AccessToken"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_6
    if-eqz v8, :cond_3

    .line 147
    const-string v10, "com.kakao.token.RefreshToken"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cipher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getEncryptor(Landroid/content/Context;)Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getEncryptor(Landroid/content/Context;)Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEncryptor(Landroid/content/Context;)Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v2, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encryptor:Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    if-nez v2, :cond_0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AndroidIdUtils;->generateAndroidId(Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .local v1, "salt":[B
    :goto_0
    new-instance v2, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    invoke-direct {v2, p0, v1}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;-><init>(Landroid/content/Context;[B)V

    sput-object v2, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encryptor:Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    .line 93
    .end local v1    # "salt":[B
    :cond_0
    sget-object v2, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encryptor:Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;

    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "a23456789012345bcdefg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "salt":[B
    goto :goto_0
.end method

.method private static getLastSecureMode(Lcom/kakao/util/helper/SharedPreferencesCache;)Z
    .locals 2
    .param p0, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 79
    const-string v1, "com.kakao.token.KakaoSecureMode"

    invoke-virtual {p0, v1}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "lastSecureModeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAccessToken(Lcom/kakao/util/helper/SharedPreferencesCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    .line 190
    sget-object v1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.kakao.token.AccessToken"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "com.kakao.token.AccessToken.ExpiresAt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->clear(Ljava/util/List;)V

    .line 195
    return-void
.end method

.method public clearRefreshToken(Lcom/kakao/util/helper/SharedPreferencesCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    .line 199
    sget-object v1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.kakao.token.RefreshToken"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "com.kakao.token.RefreshToken.ExpiresAt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->clear(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainedExpiresInAccessTokenTime()I
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->hasValidAccessToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public hasRefreshToken()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/kakao/util/helper/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidAccessToken()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/kakao/util/helper/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAccessTokenToCache(Lcom/kakao/util/helper/SharedPreferencesCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.kakao.token.AccessToken"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "com.kakao.token.AccessToken.ExpiresAt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->clear(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method public saveAccessTokenToCache(Landroid/content/Context;Lcom/kakao/util/helper/SharedPreferencesCache;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    const/4 v5, 0x0

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/kakao/auth/ISessionConfig;->isSecureMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    :try_start_0
    iget-object v4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "encryptedAccessToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "encryptedRefreshToken":Ljava/lang/String;
    const-string v4, "com.kakao.token.AccessToken"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "com.kakao.token.RefreshToken"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v2    # "encryptedAccessToken":Ljava/lang/String;
    .end local v3    # "encryptedRefreshToken":Ljava/lang/String;
    :goto_0
    const-string v4, "com.kakao.token.AccessToken.ExpiresAt"

    iget-object v5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    const-string v4, "com.kakao.token.RefreshToken.ExpiresAt"

    iget-object v5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 234
    const-string v4, "com.kakao.token.KakaoSecureMode"

    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/kakao/auth/ISessionConfig;->isSecureMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->save(Landroid/os/Bundle;)V

    .line 236
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "com.kakao.token.AccessToken"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "com.kakao.token.RefreshToken"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "com.kakao.token.AccessToken"

    iget-object v5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "com.kakao.token.RefreshToken"

    iget-object v5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)V
    .locals 2
    .param p1, "newAccessToken"    # Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .prologue
    .line 240
    iget-object v0, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    .line 241
    .local v0, "newRefreshToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    .line 243
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessToken:Ljava/lang/String;

    .line 246
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshToken:Ljava/lang/String;

    .line 247
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->accessTokenExpiresAt:Ljava/util/Date;

    .line 248
    iget-object v1, p1, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    iput-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->refreshTokenExpiresAt:Ljava/util/Date;

    goto :goto_0
.end method
