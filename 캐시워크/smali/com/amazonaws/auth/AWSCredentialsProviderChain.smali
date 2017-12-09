.class public Lcom/amazonaws/auth/AWSCredentialsProviderChain;
.super Ljava/lang/Object;
.source "AWSCredentialsProviderChain.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private credentialsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private lastUsedProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private reuseLastProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 4
    .param p1, "credentialsProviders"    # [Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    .line 60
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No credential providers specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    .line 64
    .local v0, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    iget-object v3, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 7

    .prologue
    .line 95
    iget-boolean v3, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->lastUsedProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->lastUsedProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v3}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 101
    .local v2, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_start_0
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 103
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 104
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    sget-object v4, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading credentials from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 107
    iput-object v2, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->lastUsedProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "credentials":Lcom/amazonaws/auth/AWSCredentials;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load credentials from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_2
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Unable to load AWS credentials from any provider in the chain"

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getReuseLastProvider()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    return v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 124
    .local v0, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->refresh()V

    goto :goto_0

    .line 126
    .end local v0    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_0
    return-void
.end method

.method public setReuseLastProvider(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->reuseLastProvider:Z

    .line 91
    return-void
.end method
