.class public Lcom/amazonaws/util/ImmutableMapParameter;
.super Ljava/lang/Object;
.source "ImmutableMapParameter.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DUPLICATED_KEY_MESSAGE:Ljava/lang/String; = "Duplicate keys are provided."

.field private static final UNMODIFIABLE_MESSAGE:Ljava/lang/String; = "This is an immutable map."


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/amazonaws/util/ImmutableMapParameter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/amazonaws/util/ImmutableMapParameter$1;

    .prologue
    .line 57
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static builder()Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazonaws/util/ImmutableMapParameter$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;

    invoke-direct {v0}, Lcom/amazonaws/util/ImmutableMapParameter$Builder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "k0":Ljava/lang/Object;, "TK;"
    .local p1, "v0":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 83
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "k0":Ljava/lang/Object;, "TK;"
    .local p1, "v0":Ljava/lang/Object;, "TV;"
    .local p2, "k1":Ljava/lang/Object;, "TK;"
    .local p3, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "k0":Ljava/lang/Object;, "TK;"
    .local p1, "v0":Ljava/lang/Object;, "TV;"
    .local p2, "k1":Ljava/lang/Object;, "TK;"
    .local p3, "v1":Ljava/lang/Object;, "TV;"
    .local p4, "k2":Ljava/lang/Object;, "TK;"
    .local p5, "v2":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "k0":Ljava/lang/Object;, "TK;"
    .local p1, "v0":Ljava/lang/Object;, "TV;"
    .local p2, "k1":Ljava/lang/Object;, "TK;"
    .local p3, "v1":Ljava/lang/Object;, "TV;"
    .local p4, "k2":Ljava/lang/Object;, "TK;"
    .local p5, "v2":Ljava/lang/Object;, "TV;"
    .local p6, "k3":Ljava/lang/Object;, "TK;"
    .local p7, "v3":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    invoke-static {v0, p6, p7}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "k0":Ljava/lang/Object;, "TK;"
    .local p1, "v0":Ljava/lang/Object;, "TV;"
    .local p2, "k1":Ljava/lang/Object;, "TK;"
    .local p3, "v1":Ljava/lang/Object;, "TV;"
    .local p4, "k2":Ljava/lang/Object;, "TK;"
    .local p5, "v2":Ljava/lang/Object;, "TV;"
    .local p6, "k3":Ljava/lang/Object;, "TK;"
    .local p7, "v3":Ljava/lang/Object;, "TV;"
    .local p8, "k4":Ljava/lang/Object;, "TK;"
    .local p9, "v4":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    invoke-static {v0, p6, p7}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    invoke-static {v0, p8, p9}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate keys are provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 212
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is an immutable map."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 170
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is an immutable map."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is an immutable map."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is an immutable map."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter;, "Lcom/amazonaws/util/ImmutableMapParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
