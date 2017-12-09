.class Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;
.super Ljava/lang/Object;
.source "ClientConnectionManagerFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field private final orig:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 0
    .param p1, "real"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionManager;

    .line 61
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "ret":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/http/conn/ClientConnectionRequest;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/http/conn/ClientConnectionRequest;

    .line 68
    .end local v1    # "ret":Ljava/lang/Object;
    invoke-static {v1}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->wrap(Lorg/apache/http/conn/ClientConnectionRequest;)Lorg/apache/http/conn/ClientConnectionRequest;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :cond_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method
