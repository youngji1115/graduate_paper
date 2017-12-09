.class public Lorg/mapdb/DB$HTreeSetMaker;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTreeSetMaker"
.end annotation


# instance fields
.field protected counter:Z

.field protected expire:J

.field protected expireAccess:J

.field protected expireMaxSize:J

.field protected expireStoreSize:J

.field protected hasher:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<*>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;

.field protected serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mapdb/DB;


# direct methods
.method public constructor <init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 233
    iput-object p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->this$0:Lorg/mapdb/DB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->counter:Z

    .line 238
    iput-object v1, p0, Lorg/mapdb/DB$HTreeSetMaker;->serializer:Lorg/mapdb/Serializer;

    .line 239
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireMaxSize:J

    .line 240
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireStoreSize:J

    .line 241
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeSetMaker;->expire:J

    .line 242
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireAccess:J

    .line 243
    iput-object v1, p0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    .line 234
    iput-object p2, p0, Lorg/mapdb/DB$HTreeSetMaker;->name:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public counterEnable()Lorg/mapdb/DB$HTreeSetMaker;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->counter:Z

    .line 248
    return-object p0
.end method

.method public expireAfterAccess(J)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 292
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireAccess:J

    .line 293
    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 286
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireAccess:J

    .line 287
    return-object p0
.end method

.method public expireAfterWrite(J)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 280
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->expire:J

    .line 281
    return-object p0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 274
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->expire:J

    .line 275
    return-object p0
.end method

.method public expireMaxSize(J)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 1
    .param p1, "maxSize"    # J

    .prologue
    .line 261
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireMaxSize:J

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->counter:Z

    .line 263
    return-object p0
.end method

.method public expireStoreSize(D)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 5
    .param p1, "maxStoreSize"    # D

    .prologue
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 268
    mul-double v0, p1, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireStoreSize:J

    .line 269
    return-object p0
.end method

.method public hasher(Lorg/mapdb/Hasher;)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Hasher",
            "<*>;)",
            "Lorg/mapdb/DB$HTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "hasher":Lorg/mapdb/Hasher;, "Lorg/mapdb/Hasher<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    .line 299
    return-object p0
.end method

.method public make()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 304
    iget-wide v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->expireMaxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->counter:Z

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->this$0:Lorg/mapdb/DB;

    invoke-virtual {v0, p0}, Lorg/mapdb/DB;->createHashSet(Lorg/mapdb/DB$HTreeSetMaker;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public makeOrGet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v1, p0, Lorg/mapdb/DB$HTreeSetMaker;->this$0:Lorg/mapdb/DB;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->this$0:Lorg/mapdb/DB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/mapdb/DB$HTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapdb/DB$HTreeSetMaker;->make()Ljava/util/Set;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeSetMaker;->this$0:Lorg/mapdb/DB;

    iget-object v2, p0, Lorg/mapdb/DB$HTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getHashSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serializer(Lorg/mapdb/Serializer;)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<*>;)",
            "Lorg/mapdb/DB$HTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeSetMaker;->serializer:Lorg/mapdb/Serializer;

    .line 255
    return-object p0
.end method
