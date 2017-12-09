.class final Lorg/mapdb/Fun$4;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Lorg/mapdb/Fun$Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun;->extractKey()Lorg/mapdb/Fun$Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Fun$Function1",
        "<TK;",
        "Lorg/mapdb/Fun$Tuple2",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 696
    check-cast p1, Lorg/mapdb/Fun$Tuple2;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/Fun$4;->run(Lorg/mapdb/Fun$Tuple2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/mapdb/Fun$Tuple2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TK;TV;>;"
    iget-object v0, p1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    return-object v0
.end method
