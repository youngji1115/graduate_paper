.class public Lcom/tnkfactory/ad/ez;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/tnkfactory/ad/AdItemList;
    .locals 5

    new-instance v1, Lcom/tnkfactory/ad/AdItemList;

    invoke-direct {v1}, Lcom/tnkfactory/ad/AdItemList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->c()Lcom/tnkfactory/ad/hg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/hg;->b(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tnkfactory/ad/AdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/AdItemList;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static a(Landroid/content/Context;I)Lcom/tnkfactory/ad/AdItemList;
    .locals 5

    new-instance v1, Lcom/tnkfactory/ad/AdItemList;

    invoke-direct {v1}, Lcom/tnkfactory/ad/AdItemList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->c()Lcom/tnkfactory/ad/hg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "hdr_msg"

    invoke-virtual {v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/AdItemList;->setHeaderMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tnkfactory/ad/AdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/AdItemList;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static a(Landroid/content/Context;ILjava/lang/String;)Lcom/tnkfactory/ad/AdItemList;
    .locals 5

    new-instance v1, Lcom/tnkfactory/ad/AdItemList;

    invoke-direct {v1}, Lcom/tnkfactory/ad/AdItemList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->c()Lcom/tnkfactory/ad/hg;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tnkfactory/ad/hg;->b(Landroid/content/Context;ILjava/lang/String;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tnkfactory/ad/ImageAdItem;

    invoke-virtual {v2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tnkfactory/ad/ImageAdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/AdItemList;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
