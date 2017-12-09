.class public abstract Lcom/amazonaws/transform/AbstractErrorUnmarshaller;
.super Ljava/lang/Object;
.source "AbstractErrorUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final exceptionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/amazonaws/transform/AbstractErrorUnmarshaller;, "Lcom/amazonaws/transform/AbstractErrorUnmarshaller<TT;>;"
    const-class v0, Lcom/amazonaws/AmazonServiceException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/amazonaws/transform/AbstractErrorUnmarshaller;, "Lcom/amazonaws/transform/AbstractErrorUnmarshaller<TT;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/amazonaws/AmazonServiceException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;->exceptionClass:Ljava/lang/Class;

    .line 49
    return-void
.end method


# virtual methods
.method protected newException(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazonaws/transform/AbstractErrorUnmarshaller;, "Lcom/amazonaws/transform/AbstractErrorUnmarshaller<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;->exceptionClass:Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 64
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/amazonaws/AmazonServiceException;>;"
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/AmazonServiceException;

    return-object v1
.end method
