.class public Lcom/amazonaws/auth/policy/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final DEFAULT_POLICY_VERSION:Ljava/lang/String; = "2012-10-17"


# instance fields
.field private id:Ljava/lang/String;

.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "2012-10-17"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->version:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "2012-10-17"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->version:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Policy;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Statement;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/Policy;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    .line 105
    return-void
.end method

.method private assignUniqueStatementIds()V
    .locals 5

    .prologue
    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v2, "usedStatementIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Statement;

    .line 227
    .local v1, "statement":Lcom/amazonaws/auth/policy/Statement;
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_1
    const/4 v0, 0x0

    .line 232
    .local v0, "counter":I
    iget-object v3, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Statement;

    .line 233
    .restart local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 236
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    .end local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_4
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .locals 1
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;

    invoke-direct {v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->createPolicyFromJsonString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Policy;->id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setStatements(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Statement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    .line 177
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Policy;->assignUniqueStatementIds()V

    .line 178
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;

    invoke-direct {v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePolicyToString(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Policy;->setId(Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public varargs withStatements([Lcom/amazonaws/auth/policy/Statement;)Lcom/amazonaws/auth/policy/Policy;
    .locals 1
    .param p1, "statements"    # [Lcom/amazonaws/auth/policy/Statement;

    .prologue
    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    .line 197
    return-object p0
.end method
