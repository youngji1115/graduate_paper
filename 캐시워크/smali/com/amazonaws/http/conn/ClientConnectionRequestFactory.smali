.class Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;
.super Ljava/lang/Object;
.source "ClientConnectionRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;
    }
.end annotation


# static fields
.field private static final interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->log:Lorg/apache/commons/logging/Log;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/http/conn/ClientConnectionRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/amazonaws/http/conn/Wrapped;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->interfaces:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static wrap(Lorg/apache/http/conn/ClientConnectionRequest;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 3
    .param p0, "orig"    # Lorg/apache/http/conn/ClientConnectionRequest;

    .prologue
    .line 45
    instance-of v0, p0, Lcom/amazonaws/http/conn/Wrapped;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    const-class v0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->interfaces:[Ljava/lang/Class;

    new-instance v2, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;

    invoke-direct {v2, p0}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;-><init>(Lorg/apache/http/conn/ClientConnectionRequest;)V

    .line 47
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionRequest;

    return-object v0
.end method
