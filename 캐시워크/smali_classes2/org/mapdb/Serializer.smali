.class public interface abstract Lorg/mapdb/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Serializer$CompressionWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BASIC:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOLEAN:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE_ARRAY:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final CHAR_ARRAY:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[C>;"
        }
    .end annotation
.end field

.field public static final DOUBLE_ARRAY:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[D>;"
        }
    .end annotation
.end field

.field public static final ILLEGAL_ACCESS:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTEGER:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ARRAY:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final JAVA:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_ARRAY:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[J>;"
        }
    .end annotation
.end field

.field public static final STRING:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_ASCII:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_INTERN:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_NOSIZE:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UUID:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/mapdb/Serializer$1;

    invoke-direct {v0}, Lorg/mapdb/Serializer$1;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->STRING:Lorg/mapdb/Serializer;

    .line 92
    new-instance v0, Lorg/mapdb/Serializer$2;

    invoke-direct {v0}, Lorg/mapdb/Serializer$2;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->STRING_INTERN:Lorg/mapdb/Serializer;

    .line 116
    new-instance v0, Lorg/mapdb/Serializer$3;

    invoke-direct {v0}, Lorg/mapdb/Serializer$3;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->STRING_ASCII:Lorg/mapdb/Serializer;

    .line 150
    new-instance v0, Lorg/mapdb/Serializer$4;

    invoke-direct {v0}, Lorg/mapdb/Serializer$4;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    .line 183
    new-instance v0, Lorg/mapdb/Serializer$5;

    invoke-direct {v0}, Lorg/mapdb/Serializer$5;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    .line 206
    new-instance v0, Lorg/mapdb/Serializer$6;

    invoke-direct {v0}, Lorg/mapdb/Serializer$6;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    .line 225
    new-instance v0, Lorg/mapdb/Serializer$7;

    invoke-direct {v0}, Lorg/mapdb/Serializer$7;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    .line 250
    new-instance v0, Lorg/mapdb/Serializer$8;

    invoke-direct {v0}, Lorg/mapdb/Serializer$8;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->ILLEGAL_ACCESS:Lorg/mapdb/Serializer;

    .line 274
    new-instance v0, Lorg/mapdb/SerializerBase;

    invoke-direct {v0}, Lorg/mapdb/SerializerBase;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->BASIC:Lorg/mapdb/Serializer;

    .line 280
    new-instance v0, Lorg/mapdb/Serializer$9;

    invoke-direct {v0}, Lorg/mapdb/Serializer$9;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->BYTE_ARRAY:Lorg/mapdb/Serializer;

    .line 307
    new-instance v0, Lorg/mapdb/Serializer$10;

    invoke-direct {v0}, Lorg/mapdb/Serializer$10;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    .line 334
    new-instance v0, Lorg/mapdb/Serializer$11;

    invoke-direct {v0}, Lorg/mapdb/Serializer$11;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->CHAR_ARRAY:Lorg/mapdb/Serializer;

    .line 365
    new-instance v0, Lorg/mapdb/Serializer$12;

    invoke-direct {v0}, Lorg/mapdb/Serializer$12;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->INT_ARRAY:Lorg/mapdb/Serializer;

    .line 395
    new-instance v0, Lorg/mapdb/Serializer$13;

    invoke-direct {v0}, Lorg/mapdb/Serializer$13;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->LONG_ARRAY:Lorg/mapdb/Serializer;

    .line 425
    new-instance v0, Lorg/mapdb/Serializer$14;

    invoke-direct {v0}, Lorg/mapdb/Serializer$14;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->DOUBLE_ARRAY:Lorg/mapdb/Serializer;

    .line 454
    new-instance v0, Lorg/mapdb/Serializer$15;

    invoke-direct {v0}, Lorg/mapdb/Serializer$15;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->JAVA:Lorg/mapdb/Serializer;

    .line 480
    new-instance v0, Lorg/mapdb/Serializer$16;

    invoke-direct {v0}, Lorg/mapdb/Serializer$16;-><init>()V

    sput-object v0, Lorg/mapdb/Serializer;->UUID:Lorg/mapdb/Serializer;

    return-void
.end method


# virtual methods
.method public abstract deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fixedSize()I
.end method

.method public abstract serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
