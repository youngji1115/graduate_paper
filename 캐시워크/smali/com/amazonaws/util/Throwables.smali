.class public final enum Lcom/amazonaws/util/Throwables;
.super Ljava/lang/Enum;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/Throwables;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/Throwables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/Throwables;

    sput-object v0, Lcom/amazonaws/util/Throwables;->$VALUES:[Lcom/amazonaws/util/Throwables;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "orig"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 46
    .local v1, "i":I
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 34
    .end local v1    # "i":I
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    move-object v2, p0

    .line 36
    .restart local v2    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 38
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object p0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    const-class v3, Lcom/amazonaws/util/Throwables;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Possible circular reference detected on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Throwables;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/amazonaws/util/Throwables;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/Throwables;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/Throwables;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazonaws/util/Throwables;->$VALUES:[Lcom/amazonaws/util/Throwables;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Throwables;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Throwables;

    return-object v0
.end method
