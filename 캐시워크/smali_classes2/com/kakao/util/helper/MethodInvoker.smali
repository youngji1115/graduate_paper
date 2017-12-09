.class public final Lcom/kakao/util/helper/MethodInvoker;
.super Ljava/lang/Object;
.source "MethodInvoker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMethod(Ljava/lang/String;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "methods"    # [Ljava/lang/reflect/Method;

    .prologue
    .line 50
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 51
    .local v0, "methodItr":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    .end local v0    # "methodItr":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 50
    .restart local v0    # "methodItr":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "methodItr":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "methodOwner"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "methodOwnerClass is null."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    .local v1, "itr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "methods":[Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 37
    invoke-static {p1, v2}, Lcom/kakao/util/helper/MethodInvoker;->findMethod(Ljava/lang/String;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    .local v0, "foundMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v0    # "foundMethod":Ljava/lang/reflect/Method;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    return-void

    .line 45
    .restart local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
