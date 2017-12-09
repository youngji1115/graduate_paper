.class Lorg/mapdb/Serializer$CompressionWrapper$1;
.super Ljava/lang/ThreadLocal;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Serializer$CompressionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/mapdb/CompressLZF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/Serializer$CompressionWrapper;


# direct methods
.method constructor <init>(Lorg/mapdb/Serializer$CompressionWrapper;)V
    .locals 0

    .prologue
    .line 504
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper$1;, "Lorg/mapdb/Serializer$CompressionWrapper.1;"
    iput-object p1, p0, Lorg/mapdb/Serializer$CompressionWrapper$1;->this$0:Lorg/mapdb/Serializer$CompressionWrapper;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 504
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper$1;, "Lorg/mapdb/Serializer$CompressionWrapper.1;"
    invoke-virtual {p0}, Lorg/mapdb/Serializer$CompressionWrapper$1;->initialValue()Lorg/mapdb/CompressLZF;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/mapdb/CompressLZF;
    .locals 1

    .prologue
    .line 506
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper$1;, "Lorg/mapdb/Serializer$CompressionWrapper.1;"
    new-instance v0, Lorg/mapdb/CompressLZF;

    invoke-direct {v0}, Lorg/mapdb/CompressLZF;-><init>()V

    return-object v0
.end method
