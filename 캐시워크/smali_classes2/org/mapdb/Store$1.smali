.class Lorg/mapdb/Store$1;
.super Ljava/lang/ThreadLocal;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Store;-><init>(ZZ[BZ)V
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
.field final synthetic this$0:Lorg/mapdb/Store;


# direct methods
.method constructor <init>(Lorg/mapdb/Store;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/mapdb/Store$1;->this$0:Lorg/mapdb/Store;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/mapdb/Store$1;->initialValue()Lorg/mapdb/CompressLZF;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/mapdb/CompressLZF;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/mapdb/CompressLZF;

    invoke-direct {v0}, Lorg/mapdb/CompressLZF;-><init>()V

    return-object v0
.end method
