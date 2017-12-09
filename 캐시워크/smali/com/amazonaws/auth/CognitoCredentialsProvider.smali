.class public Lcom/amazonaws/auth/CognitoCredentialsProvider;
.super Ljava/lang/Object;
.source "CognitoCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field public static final DEFAULT_DURATION_SECONDS:I = 0xe10

.field public static final DEFAULT_THRESHOLD_SECONDS:I = 0x1f4


# instance fields
.field protected authRoleArn:Ljava/lang/String;

.field private cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field protected customRoleArn:Ljava/lang/String;

.field private final identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

.field protected refreshThreshold:I

.field protected securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field protected sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

.field protected sessionCredentialsExpiration:Ljava/util/Date;

.field protected sessionDuration:I

.field protected token:Ljava/lang/String;

.field protected unauthRoleArn:Ljava/lang/String;

.field protected useEnhancedFlow:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .locals 1
    .param p1, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p2, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    .line 282
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p2, "region"    # Lcom/amazonaws/regions/Regions;
    .param p3, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 304
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V

    .line 306
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-static {p2}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->setRegion(Lcom/amazonaws/regions/Region;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V
    .locals 1
    .param p1, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p2, "cib"    # Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 330
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 331
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 333
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 334
    const/16 v0, 0xe10

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 335
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    .line 337
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p2, "unauthArn"    # Ljava/lang/String;
    .param p3, "authArn"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    new-instance v2, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v2}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 1
    .param p1, "provider"    # Lcom/amazonaws/auth/AWSCognitoIdentityProvider;
    .param p2, "unauthArn"    # Ljava/lang/String;
    .param p3, "authArn"    # Ljava/lang/String;
    .param p4, "stsClient"    # Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 258
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 260
    iput-object p4, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 261
    const/16 v0, 0xe10

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 262
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 7
    .param p1, "identityPoolId"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    const/4 v1, 0x0

    .line 143
    new-instance v6, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v6}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 7
    .param p1, "identityPoolId"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/regions/Regions;
    .param p3, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 163
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 7
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "identityPoolId"    # Ljava/lang/String;
    .param p3, "unauthRoleArn"    # Ljava/lang/String;
    .param p4, "authRoleArn"    # Ljava/lang/String;
    .param p5, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    .line 98
    new-instance v6, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v6}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 7
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "identityPoolId"    # Ljava/lang/String;
    .param p3, "unauthRoleArn"    # Ljava/lang/String;
    .param p4, "authRoleArn"    # Ljava/lang/String;
    .param p5, "region"    # Lcom/amazonaws/regions/Regions;
    .param p6, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 126
    new-instance v5, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v0, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v0}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v5, v0, p6}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    .line 130
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-static {p5}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->setRegion(Lcom/amazonaws/regions/Region;)V

    .line 131
    return-void

    .line 126
    :cond_0
    new-instance v6, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v0, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v0}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v6, v0, p6}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "identityPoolId"    # Ljava/lang/String;
    .param p3, "unauthRoleArn"    # Ljava/lang/String;
    .param p4, "authRoleArn"    # Ljava/lang/String;
    .param p5, "cibClient"    # Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .param p6, "stsClient"    # Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 198
    iput-object p6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 200
    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 201
    iput-object p4, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 202
    const/16 v0, 0xe10

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 203
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    .line 205
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    .line 207
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Lcom/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;

    invoke-direct {v0, p1, p2, p5}, Lcom/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 216
    :goto_1
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;

    invoke-direct {v0, p1, p2, p5}, Lcom/amazonaws/auth/AWSBasicCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    goto :goto_1
.end method

.method private appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method private populateCredentialsWithCognito(Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 637
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 638
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v2, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "cognito-identity.amazonaws.com"

    invoke-interface {v2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :goto_0
    new-instance v6, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 645
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v6

    .line 646
    invoke-virtual {v6, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v3

    .line 648
    .local v3, "request":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    const/4 v4, 0x0

    .line 651
    .local v4, "result":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_start_0
    iget-object v6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v6, v3}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 667
    :goto_1
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v1

    .line 668
    .local v1, "credentials":Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    new-instance v6, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v7

    .line 669
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 670
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 672
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 673
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 676
    :cond_0
    return-void

    .line 641
    .end local v1    # "credentials":Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    .end local v2    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "request":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    .end local v4    # "result":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v2

    .restart local v2    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 652
    .restart local v3    # "request":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    .restart local v4    # "result":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :catch_0
    move-exception v5

    .line 655
    .local v5, "rnfe":Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException;
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v4

    .line 664
    goto :goto_1

    .line 656
    .end local v5    # "rnfe":Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException;
    :catch_1
    move-exception v0

    .line 658
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ValidationException"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 659
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v4

    goto :goto_1

    .line 662
    :cond_2
    throw v0
.end method

.method private populateCredentialsWithSts(Ljava/lang/String;)V
    .locals 9
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v5}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->isAuthenticated()Z

    move-result v0

    .line 686
    .local v0, "isAuthenticated":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    .line 688
    .local v1, "roleArn":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v5}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    .line 689
    invoke-virtual {v5, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withWebIdentityToken(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v5

    .line 690
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v5

    const-string v6, "ProviderSession"

    .line 691
    invoke-virtual {v5, v6}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleSessionName(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v5

    iget v6, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 692
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    move-result-object v2

    .line 693
    .local v2, "sessionTokenRequest":Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 694
    iget-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 695
    invoke-interface {v5, v2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->assumeRoleWithWebIdentity(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object v3

    .line 696
    .local v3, "sessionTokenResult":Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    .line 698
    .local v4, "stsCredentials":Lcom/amazonaws/services/securitytoken/model/Credentials;
    new-instance v5, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 699
    invoke-virtual {v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v6

    .line 700
    invoke-virtual {v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v7

    .line 701
    invoke-virtual {v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 702
    invoke-virtual {v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 704
    return-void

    .line 686
    .end local v1    # "roleArn":Ljava/lang/String;
    .end local v2    # "sessionTokenRequest":Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    .end local v3    # "sessionTokenResult":Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .end local v4    # "stsCredentials":Lcom/amazonaws/services/securitytoken/model/Credentials;
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    goto :goto_0
.end method

.method private retryGetCredentialsForIdentity()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 4

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    .line 613
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    .local v0, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cognito-identity.amazonaws.com"

    iget-object v3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :goto_0
    new-instance v2, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 621
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v2

    .line 622
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    move-result-object v1

    .line 624
    .local v1, "request":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v2, v1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v2

    return-object v2

    .line 617
    .end local v0    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "request":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private retryRefresh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clearCredentials()V

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->setLogins(Ljava/util/Map;)V

    .line 539
    return-void
.end method

.method public clearCredentials()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 547
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 548
    return-void
.end method

.method public bridge synthetic getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->startSession()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public getCustomRoleArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityProvider()Lcom/amazonaws/auth/AWSIdentityProvider;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshThreshold()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    return v0
.end method

.method public getSessionCredentitalsExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-object v0
.end method

.method public getSessionDuration()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    const-string v0, ""

    return-object v0
.end method

.method protected needsNewSession()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 714
    iget-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    if-nez v5, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v4

    .line 717
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 718
    invoke-static {}, Lcom/amazonaws/SDKGlobalConfiguration;->getGlobalTimeOffset()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 719
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 721
    .local v2, "timeRemaining":J
    iget v5, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->startSession()V

    .line 528
    return-void
.end method

.method public registerIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/auth/IdentityChangedListener;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->registerIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V

    .line 752
    return-void
.end method

.method public setCustomRoleArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "customRoleArn"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    .line 496
    return-void
.end method

.method protected setIdentityId(Ljava/lang/String;)V
    .locals 1
    .param p1, "identityId"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    .line 460
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
    .line 471
    .local p1, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->setLogins(Ljava/util/Map;)V

    .line 472
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clearCredentials()V

    .line 473
    return-void
.end method

.method public setRefreshThreshold(I)V
    .locals 0
    .param p1, "refreshThreshold"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    .line 426
    return-void
.end method

.method public setSessionCredentialsExpiration(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiration"    # Ljava/util/Date;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 353
    return-void
.end method

.method public setSessionDuration(I)V
    .locals 0
    .param p1, "sessionDuration"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 386
    return-void
.end method

.method protected startSession()V
    .locals 4

    .prologue
    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    :goto_0
    iget-boolean v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->populateCredentialsWithCognito(Ljava/lang/String;)V

    .line 582
    :goto_1
    return-void

    .line 562
    :catch_0
    move-exception v1

    .line 565
    .local v1, "rnfe":Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException;
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    goto :goto_0

    .line 566
    .end local v1    # "rnfe":Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException;
    :catch_1
    move-exception v0

    .line 568
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidationException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_0
    throw v0

    .line 579
    .end local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->populateCredentialsWithSts(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/auth/IdentityChangedListener;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->unregisterIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V

    .line 762
    return-void
.end method

.method public withLogins(Ljava/util/Map;)Lcom/amazonaws/auth/AWSCredentialsProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setLogins(Ljava/util/Map;)V

    .line 512
    return-object p0
.end method

.method public withRefreshThreshold(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    .locals 0
    .param p1, "refreshThreshold"    # I

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setRefreshThreshold(I)V

    .line 442
    return-object p0
.end method

.method public withSessionDuration(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    .locals 0
    .param p1, "sessionDuration"    # I

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setSessionDuration(I)V

    .line 401
    return-object p0
.end method
