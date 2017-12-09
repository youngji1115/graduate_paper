.class final Lorg/mapdb/Bind$1;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->size(Lorg/mapdb/Bind$MapWithModificationListener;Lorg/mapdb/Atomic$Long;)V
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
.field final synthetic val$sizeCounter:Lorg/mapdb/Atomic$Long;


# direct methods
.method constructor <init>(Lorg/mapdb/Atomic$Long;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/mapdb/Bind$1;->val$sizeCounter:Lorg/mapdb/Atomic$Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 146
    iget-object v0, p0, Lorg/mapdb/Bind$1;->val$sizeCounter:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v0}, Lorg/mapdb/Atomic$Long;->incrementAndGet()J

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 148
    iget-object v0, p0, Lorg/mapdb/Bind$1;->val$sizeCounter:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v0}, Lorg/mapdb/Atomic$Long;->decrementAndGet()J

    goto :goto_0
.end method
