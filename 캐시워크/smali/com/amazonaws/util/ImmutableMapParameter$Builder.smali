.class public Lcom/amazonaws/util/ImmutableMapParameter$Builder;
.super Ljava/lang/Object;
.source "ImmutableMapParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/ImmutableMapParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter$Builder;, "Lcom/amazonaws/util/ImmutableMapParameter$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    .line 245
    return-void
.end method


# virtual methods
.method public build()Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazonaws/util/ImmutableMapParameter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter$Builder;, "Lcom/amazonaws/util/ImmutableMapParameter$Builder<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v0, "builtMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v1, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 268
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;Lcom/amazonaws/util/ImmutableMapParameter$1;)V

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/amazonaws/util/ImmutableMapParameter$Builder;, "Lcom/amazonaws/util/ImmutableMapParameter$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/amazonaws/util/ImmutableMapParameter;->access$000(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    return-object p0
.end method
