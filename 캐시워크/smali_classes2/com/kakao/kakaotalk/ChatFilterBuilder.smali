.class public Lcom/kakao/kakaotalk/ChatFilterBuilder;
.super Ljava/lang/Object;
.source "ChatFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;
    }
.end annotation


# instance fields
.field private final filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder;->filterList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;)Lcom/kakao/kakaotalk/ChatFilterBuilder;
    .locals 1
    .param p1, "filter"    # Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder;->filterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    const-string v0, ""

    .line 66
    .local v0, "filterString":Ljava/lang/String;
    iget-object v3, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder;->filterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 67
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder;->filterList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    invoke-static {v3}, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->access$000(Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-ge v1, v2, :cond_0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/kakao/util/helper/log/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    return-object v0
.end method
