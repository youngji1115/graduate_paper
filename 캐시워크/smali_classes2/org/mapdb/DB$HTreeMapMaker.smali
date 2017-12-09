.class public Lorg/mapdb/DB$HTreeMapMaker;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTreeMapMaker"
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

.field protected keySerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/mapdb/DB;

.field protected valueCreator:Lorg/mapdb/Fun$Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Fun$Function1",
            "<**>;"
        }
    .end annotation
.end field

.field protected valueSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 126
    iput-object p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->this$0:Lorg/mapdb/DB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->counter:Z

    .line 132
    iput-object v1, p0, Lorg/mapdb/DB$HTreeMapMaker;->keySerializer:Lorg/mapdb/Serializer;

    .line 133
    iput-object v1, p0, Lorg/mapdb/DB$HTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    .line 134
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireMaxSize:J

    .line 135
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeMapMaker;->expire:J

    .line 136
    iput-wide v2, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireAccess:J

    .line 138
    iput-object v1, p0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    .line 140
    iput-object v1, p0, Lorg/mapdb/DB$HTreeMapMaker;->valueCreator:Lorg/mapdb/Fun$Function1;

    .line 127
    iput-object p2, p0, Lorg/mapdb/DB$HTreeMapMaker;->name:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public counterEnable()Lorg/mapdb/DB$HTreeMapMaker;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->counter:Z

    .line 148
    return-object p0
.end method

.method public expireAfterAccess(J)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireAccess:J

    .line 193
    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 186
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireAccess:J

    .line 187
    return-object p0
.end method

.method public expireAfterWrite(J)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->expire:J

    .line 181
    return-object p0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 174
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->expire:J

    .line 175
    return-object p0
.end method

.method public expireMaxSize(J)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 1
    .param p1, "maxSize"    # J

    .prologue
    .line 167
    iput-wide p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireMaxSize:J

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->counter:Z

    .line 169
    return-object p0
.end method

.method public expireStoreSize(D)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 5
    .param p1, "maxStoreSize"    # D

    .prologue
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 197
    mul-double v0, p1, v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireStoreSize:J

    .line 198
    return-object p0
.end method

.method public hasher(Lorg/mapdb/Hasher;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Hasher",
            "<*>;)",
            "Lorg/mapdb/DB$HTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "hasher":Lorg/mapdb/Hasher;, "Lorg/mapdb/Hasher<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    .line 210
    return-object p0
.end method

.method public keySerializer(Lorg/mapdb/Serializer;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<*>;)",
            "Lorg/mapdb/DB$HTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "keySerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->keySerializer:Lorg/mapdb/Serializer;

    .line 156
    return-object p0
.end method

.method public make()Lorg/mapdb/HTreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->expireMaxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->counter:Z

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->this$0:Lorg/mapdb/DB;

    invoke-virtual {v0, p0}, Lorg/mapdb/DB;->createHashMap(Lorg/mapdb/DB$HTreeMapMaker;)Lorg/mapdb/HTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public makeOrGet()Lorg/mapdb/HTreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lorg/mapdb/DB$HTreeMapMaker;->this$0:Lorg/mapdb/DB;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->this$0:Lorg/mapdb/DB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/mapdb/DB$HTreeMapMaker;->name:Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/mapdb/DB$HTreeMapMaker;->make()Lorg/mapdb/HTreeMap;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$HTreeMapMaker;->this$0:Lorg/mapdb/DB;

    iget-object v2, p0, Lorg/mapdb/DB$HTreeMapMaker;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;

    move-result-object v0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueCreator(Lorg/mapdb/Fun$Function1;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Function1",
            "<**>;)",
            "Lorg/mapdb/DB$HTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "valueCreator":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<**>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->valueCreator:Lorg/mapdb/Fun$Function1;

    .line 205
    return-object p0
.end method

.method public valueSerializer(Lorg/mapdb/Serializer;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<*>;)",
            "Lorg/mapdb/DB$HTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "valueSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$HTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    .line 162
    return-object p0
.end method
