.class final Lorg/mapdb/Bind$2;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->secondaryValue(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Bind$MapListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fun:Lorg/mapdb/Fun$Function2;

.field final synthetic val$secondary:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/mapdb/Bind$2;->val$secondary:Ljava/util/Map;

    iput-object p2, p0, Lorg/mapdb/Bind$2;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 191
    iget-object v0, p0, Lorg/mapdb/Bind$2;->val$secondary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/mapdb/Bind$2;->val$secondary:Ljava/util/Map;

    iget-object v1, p0, Lorg/mapdb/Bind$2;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v1, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
