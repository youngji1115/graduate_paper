.class public Lcom/amazonaws/auth/SessionCredentialsProviderFactory;
.super Ljava/lang/Object;
.source "SessionCredentialsProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
    }
.end annotation


# static fields
.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;",
            "Lcom/amazonaws/auth/STSSessionCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSessionCredentialsProvider(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/auth/STSSessionCredentialsProvider;
    .locals 4
    .param p0, "longTermCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p1, "serviceEndpoint"    # Ljava/lang/String;
    .param p2, "stsClientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 95
    const-class v2, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;

    invoke-interface {p0}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "key":Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
    sget-object v1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    sget-object v1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->cache:Ljava/util/Map;

    new-instance v3, Lcom/amazonaws/auth/STSSessionCredentialsProvider;

    invoke-direct {v3, p0, p2}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    sget-object v1, Lcom/amazonaws/auth/SessionCredentialsProviderFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/STSSessionCredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 95
    .end local v0    # "key":Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
