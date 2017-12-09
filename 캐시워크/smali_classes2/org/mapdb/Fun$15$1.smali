.class Lorg/mapdb/Fun$15$1;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun$15;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/Fun$15;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/mapdb/Fun$15;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lorg/mapdb/Fun$15$1;->this$0:Lorg/mapdb/Fun$15;

    iput-object p2, p0, Lorg/mapdb/Fun$15$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lorg/mapdb/Fun$15$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Lorg/mapdb/Fun$15$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Tuple4;

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple4;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lorg/mapdb/Fun$15$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 980
    return-void
.end method
