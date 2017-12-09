.class public interface abstract Lorg/mapdb/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASIC:Lorg/mapdb/Hasher;

.field public static final BYTE_ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final CHAR_ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[C>;"
        }
    .end annotation
.end field

.field public static final DOUBLE_ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[D>;"
        }
    .end annotation
.end field

.field public static final INT_ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final LONG_ARRAY:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/mapdb/Hasher$1;

    invoke-direct {v0}, Lorg/mapdb/Hasher$1;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->BASIC:Lorg/mapdb/Hasher;

    .line 46
    new-instance v0, Lorg/mapdb/Hasher$2;

    invoke-direct {v0}, Lorg/mapdb/Hasher$2;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->BYTE_ARRAY:Lorg/mapdb/Hasher;

    .line 58
    new-instance v0, Lorg/mapdb/Hasher$3;

    invoke-direct {v0}, Lorg/mapdb/Hasher$3;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->CHAR_ARRAY:Lorg/mapdb/Hasher;

    .line 70
    new-instance v0, Lorg/mapdb/Hasher$4;

    invoke-direct {v0}, Lorg/mapdb/Hasher$4;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->INT_ARRAY:Lorg/mapdb/Hasher;

    .line 82
    new-instance v0, Lorg/mapdb/Hasher$5;

    invoke-direct {v0}, Lorg/mapdb/Hasher$5;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->LONG_ARRAY:Lorg/mapdb/Hasher;

    .line 94
    new-instance v0, Lorg/mapdb/Hasher$6;

    invoke-direct {v0}, Lorg/mapdb/Hasher$6;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->DOUBLE_ARRAY:Lorg/mapdb/Hasher;

    .line 107
    new-instance v0, Lorg/mapdb/Hasher$7;

    invoke-direct {v0}, Lorg/mapdb/Hasher$7;-><init>()V

    sput-object v0, Lorg/mapdb/Hasher;->ARRAY:Lorg/mapdb/Hasher;

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation
.end method

.method public abstract hashCode(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method
