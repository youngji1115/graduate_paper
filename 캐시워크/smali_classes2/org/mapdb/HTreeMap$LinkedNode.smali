.class public final Lorg/mapdb/HTreeMap$LinkedNode;
.super Ljava/lang/Object;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LinkedNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final expireLinkNodeRecid:J

.field public final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final next:J

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "next"    # J
    .param p3, "expireLinkNodeRecid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJTK;TV;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .local p5, "key":Ljava/lang/Object;, "TK;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p5, p0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    .line 113
    iput-wide p3, p0, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    .line 114
    iput-object p6, p0, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    .line 115
    iput-wide p1, p0, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    .line 116
    return-void
.end method
