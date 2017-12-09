.class public Lcom/amazonaws/auth/policy/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Statement$Effect;
    }
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private effect:Lcom/amazonaws/auth/policy/Statement$Effect;

.field private id:Ljava/lang/String;

.field private principals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/amazonaws/auth/policy/Statement$Effect;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    return-object v0
.end method

.method public getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setActions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Action;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    .line 205
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    .line 313
    return-void
.end method

.method public setEffect(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    .locals 0
    .param p1, "effect"    # Lcom/amazonaws/auth/policy/Statement$Effect;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->effect:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 176
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPrincipals(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "principals":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Principal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    .line 364
    return-void
.end method

.method public varargs setPrincipals([Lcom/amazonaws/auth/policy/Principal;)V
    .locals 2
    .param p1, "principals"    # [Lcom/amazonaws/auth/policy/Principal;

    .prologue
    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    .line 379
    return-void
.end method

.method public setResources(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/auth/policy/Resource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    .line 253
    return-void
.end method

.method public varargs withActions([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "actions"    # [Lcom/amazonaws/auth/policy/Action;

    .prologue
    .line 223
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    .line 224
    return-object p0
.end method

.method public varargs withConditions([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "conditions"    # [Lcom/amazonaws/auth/policy/Condition;

    .prologue
    .line 337
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    .line 338
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    .line 155
    return-object p0
.end method

.method public varargs withPrincipals([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;
    .locals 0
    .param p1, "principals"    # [Lcom/amazonaws/auth/policy/Principal;

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals([Lcom/amazonaws/auth/policy/Principal;)V

    .line 397
    return-object p0
.end method

.method public varargs withResources([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;
    .locals 1
    .param p1, "resources"    # [Lcom/amazonaws/auth/policy/Resource;

    .prologue
    .line 271
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    .line 272
    return-object p0
.end method
