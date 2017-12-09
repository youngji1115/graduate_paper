.class public final Lorg/mapdb/HTreeMap$ExpireLinkNode;
.super Ljava/lang/Object;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ExpireLinkNode"
.end annotation


# static fields
.field public static final EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

.field public static final SERIALIZER:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Lorg/mapdb/HTreeMap$ExpireLinkNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final hash:I

.field public final keyRecid:J

.field public final next:J

.field public final prev:J

.field public final time:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 1270
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    const/4 v10, 0x0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    sput-object v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;->EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1272
    new-instance v0, Lorg/mapdb/HTreeMap$ExpireLinkNode$1;

    invoke-direct {v0}, Lorg/mapdb/HTreeMap$ExpireLinkNode$1;-><init>()V

    sput-object v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    return-void
.end method

.method public constructor <init>(JJJJI)V
    .locals 1
    .param p1, "prev"    # J
    .param p3, "next"    # J
    .param p5, "keyRecid"    # J
    .param p7, "time"    # J
    .param p9, "hash"    # I

    .prologue
    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    iput-wide p1, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    .line 1307
    iput-wide p3, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    .line 1308
    iput-wide p5, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    .line 1309
    iput-wide p7, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    .line 1310
    iput p9, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    .line 1311
    return-void
.end method


# virtual methods
.method public copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 11
    .param p1, "next2"    # J

    .prologue
    .line 1314
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    iget-wide v2, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    iget-wide v6, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    iget-wide v8, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    iget v10, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    move-wide v4, p1

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    return-object v1
.end method

.method public copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 11
    .param p1, "prev2"    # J

    .prologue
    .line 1318
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    iget-wide v4, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    iget-wide v6, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    iget-wide v8, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    iget v10, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    return-object v1
.end method

.method public copyTime(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 11
    .param p1, "time2"    # J

    .prologue
    .line 1322
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    iget-wide v2, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    iget-wide v4, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    iget-wide v6, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    iget v10, p0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    move-wide v8, p1

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    return-object v1
.end method
