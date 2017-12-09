.class public final Lorg/mapdb/Queues$SimpleQueue$Node;
.super Ljava/lang/Object;
.source "Queues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues$SimpleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Queues$SimpleQueue$Node",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final next:J

.field protected final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    sput-object v0, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;)V
    .locals 1
    .param p1, "next"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    .line 161
    iput-object p3, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    .line 162
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 169
    check-cast v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 171
    .local v0, "node":Lorg/mapdb/Queues$SimpleQueue$Node;
    iget-wide v4, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    iget-wide v6, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 172
    :cond_4
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 179
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-wide v2, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    iget-wide v4, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 180
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 181
    return v0

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
