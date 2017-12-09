.class public final Lcom/amazonaws/auth/SignerFactory;
.super Ljava/lang/Object;
.source "SignerFactory.java"


# static fields
.field private static final NO_OP_SIGNER:Ljava/lang/String; = "NoOpSignerType"

.field private static final QUERY_STRING_SIGNER:Ljava/lang/String; = "QueryStringSignerType"

.field private static final SIGNERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/auth/Signer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final VERSION_FOUR_SIGNER:Ljava/lang/String; = "AWS4SignerType"

.field private static final VERSION_THREE_SIGNER:Ljava/lang/String; = "AWS3SignerType"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-string v1, "QueryStringSignerType"

    const-class v2, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-string v1, "AWS3SignerType"

    const-class v2, Lcom/amazonaws/auth/AWS3Signer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-string v1, "AWS4SignerType"

    const-class v2, Lcom/amazonaws/auth/AWS4Signer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    const-string v1, "NoOpSignerType"

    const-class v2, Lcom/amazonaws/auth/NoOpSigner;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 6
    .param p0, "signerType"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v3, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 113
    .local v2, "signerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/amazonaws/auth/Signer;>;"
    if-nez v2, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/Signer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .local v1, "signer":Lcom/amazonaws/auth/Signer;
    instance-of v3, v1, Lcom/amazonaws/auth/ServiceAwareSigner;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 129
    check-cast v3, Lcom/amazonaws/auth/ServiceAwareSigner;

    invoke-interface {v3, p1}, Lcom/amazonaws/auth/ServiceAwareSigner;->setServiceName(Ljava/lang/String;)V

    .line 131
    :cond_1
    return-object v1

    .line 118
    .end local v1    # "signer":Lcom/amazonaws/auth/Signer;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 124
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/amazonaws/auth/SignerFactory;->lookupAndCreateSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    return-object v0
.end method

.method public static getSignerByTypeAndService(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 1
    .param p0, "signerType"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/amazonaws/auth/SignerFactory;->createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    return-object v0
.end method

.method private static lookupAndCreateSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "regionName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig$Factory;->getInternalConfig()Lcom/amazonaws/internal/config/InternalConfig;

    move-result-object v0

    .line 101
    .local v0, "config":Lcom/amazonaws/internal/config/InternalConfig;
    invoke-virtual {v0, p0, p1}, Lcom/amazonaws/internal/config/InternalConfig;->getSignerConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;

    move-result-object v1

    .line 102
    .local v1, "signerConfig":Lcom/amazonaws/internal/config/SignerConfig;
    invoke-virtual {v1}, Lcom/amazonaws/internal/config/SignerConfig;->getSignerType()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "signerType":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/amazonaws/auth/SignerFactory;->createSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v3

    return-object v3
.end method

.method public static registerSigner(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p0, "signerType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/auth/Signer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "signerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/amazonaws/auth/Signer;>;"
    if-nez p0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signerType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signerClass cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    sget-object v0, Lcom/amazonaws/auth/SignerFactory;->SIGNERS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
