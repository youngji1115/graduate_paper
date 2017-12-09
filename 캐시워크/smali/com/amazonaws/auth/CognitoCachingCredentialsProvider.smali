.class public Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.super Lcom/amazonaws/auth/CognitoCredentialsProvider;
.source "CognitoCachingCredentialsProvider.java"


# static fields
.field private static final AK_KEY:Ljava/lang/String; = "accessKey"

.field private static final EXP_KEY:Ljava/lang/String; = "expirationDate"

.field private static final ID_KEY:Ljava/lang/String; = "identityId"

.field private static final SK_KEY:Ljava/lang/String; = "secretKey"

.field private static final ST_KEY:Ljava/lang/String; = "sessionToken"

.field private static final TAG:Ljava/lang/String; = "CognitoCachingCredentialsProvider"

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

.field private identityId:Ljava/lang/String;

.field private final listener:Lcom/amazonaws/auth/IdentityChangedListener;

.field needIdentityRefresh:Z

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p3, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 354
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p3, "region"    # Lcom/amazonaws/regions/Regions;
    .param p4, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 390
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p3, "unauthArn"    # Ljava/lang/String;
    .param p4, "authArn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 292
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p3, "unauthArn"    # Ljava/lang/String;
    .param p4, "authArn"    # Ljava/lang/String;
    .param p5, "stsClient"    # Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 320
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identityPoolId"    # Ljava/lang/String;
    .param p3, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 191
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identityPoolId"    # Ljava/lang/String;
    .param p3, "region"    # Lcom/amazonaws/regions/Regions;
    .param p4, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 227
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "identityPoolId"    # Ljava/lang/String;
    .param p4, "unauthRoleArn"    # Ljava/lang/String;
    .param p5, "authRoleArn"    # Ljava/lang/String;
    .param p6, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    const/4 v6, 0x0

    .line 122
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 128
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "identityPoolId"    # Ljava/lang/String;
    .param p4, "unauthRoleArn"    # Ljava/lang/String;
    .param p5, "authRoleArn"    # Ljava/lang/String;
    .param p6, "region"    # Lcom/amazonaws/regions/Regions;
    .param p7, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/4 v7, 0x0

    .line 156
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v7, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 162
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "identityPoolId"    # Ljava/lang/String;
    .param p4, "unauthArn"    # Ljava/lang/String;
    .param p5, "authArn"    # Ljava/lang/String;
    .param p6, "cibClient"    # Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .param p7, "stsClient"    # Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .prologue
    const/4 v7, 0x0

    .line 259
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    .line 79
    const-string v0, "com.amazonaws.android.auth"

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    .line 91
    iput-boolean v7, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 95
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 265
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    return-void
.end method

.method private checkUpgrade()V
    .locals 4

    .prologue
    .line 583
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "identityId"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    const-string v1, "CognitoCachingCredentialsProvider"

    const-string v2, "Identity id without namespace is detected. It will be saved under new namespace."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "identityId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "identityId":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "identityId"

    .line 589
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 590
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 592
    .end local v0    # "identityId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->checkUpgrade()V

    .line 395
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 397
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->registerIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V

    .line 398
    return-void
.end method

.method private namespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    .locals 4
    .param p1, "sessionCredentials"    # Lcom/amazonaws/auth/AWSSessionCredentials;
    .param p2, "time"    # J

    .prologue
    .line 547
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving credentials to SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessKey"

    .line 550
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secretKey"

    .line 551
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionToken"

    .line 552
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expirationDate"

    .line 553
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    :cond_0
    return-void
.end method

.method private saveIdentityId(Ljava/lang/String;)V
    .locals 2
    .param p1, "identityId"    # Ljava/lang/String;

    .prologue
    .line 563
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving identity id to SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "identityId"

    .line 567
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clear()V

    .line 487
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    return-void
.end method

.method public clearCredentials()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clearCredentials()V

    .line 498
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Clearing credentials from SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessKey"

    .line 500
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secretKey"

    .line 501
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionToken"

    .line 502
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expirationDate"

    .line 503
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    return-void
.end method

.method public getCachedIdentityId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 513
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "identityId"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "cachedIdentityId":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 515
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 517
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;
    .locals 4

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needsNewSession()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    monitor-exit p0

    return-object v1

    .line 441
    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_1
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 456
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getSessionCredentitalsExpiration()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 455
    invoke-direct {p0, v1, v2, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V

    .line 458
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;
    const-string v1, "CognitoCachingCredentialsProvider"

    const-string v2, "Failure to get credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 447
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 448
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 430
    .end local v0    # "e":Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 451
    .restart local v0    # "e":Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;
    :cond_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 414
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->refresh()V

    .line 415
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 422
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method loadCachedCredentials()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 524
    const-string v6, "CognitoCachingCredentialsProvider"

    const-string v7, "Loading credentials from SharedPreferences"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "expirationDate"

    invoke-direct {p0, v8}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 527
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "accessKey"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 528
    .local v3, "hasAK":Z
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "secretKey"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 529
    .local v4, "hasSK":Z
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "sessionToken"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 530
    .local v5, "hasST":Z
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 531
    :cond_0
    const-string v6, "CognitoCachingCredentialsProvider"

    const-string v7, "No valid credentials found in SharedPreferences"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-object v12, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "accessKey"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "AK":Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "secretKey"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "SK":Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "sessionToken"

    invoke-direct {p0, v7}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "ST":Ljava/lang/String;
    new-instance v6, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-direct {v6, v0, v1, v2}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 463
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refresh()V

    .line 464
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 465
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getSessionCredentitalsExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 464
    invoke-direct {p0, v0, v2, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V

    .line 466
    return-void
.end method

.method public setLogins(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setLogins(Ljava/util/Map;)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 474
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V

    .line 475
    return-void
.end method
