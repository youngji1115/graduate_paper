.class Lcom/tnkfactory/ad/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hr;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hg;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/hg;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hk;->a:Lcom/tnkfactory/ad/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/hk;-><init>(Lcom/tnkfactory/ad/hg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    if-nez p2, :cond_1

    const/16 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/Throwable;

    if-nez v2, :cond_0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "logic_nm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "bnr_nsec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v2, "bnr_in_eff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v2, "actn_desc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "bnr_abz_yn"

    const-string v3, "N"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "bnr_rsec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    new-instance v3, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v3}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v12

    if-ge v2, v12, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tnkfactory/ad/hk;->a:Lcom/tnkfactory/ad/hg;

    move-object/from16 v0, p1

    invoke-static {v13, v0, v12}, Lcom/tnkfactory/ad/hg;->a(Lcom/tnkfactory/ad/hg;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v13, "img_url"

    invoke-virtual {v12, v13}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "img_dt"

    invoke-virtual {v12, v14}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v15}, Lcom/tnkfactory/ad/fq;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v14, "bnr_img"

    invoke-virtual {v12, v14, v13}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "logic_nm"

    invoke-virtual {v12, v13, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "bnr_nsec"

    invoke-virtual {v12, v13, v6, v7}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    const-string v13, "bnr_in_eff"

    invoke-virtual {v12, v13, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v13, "actn_desc"

    invoke-virtual {v12, v13, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "bnr_abz_yn"

    invoke-virtual {v12, v13, v9}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "bnr_rsec"

    invoke-virtual {v12, v13, v10, v11}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    invoke-virtual {v3, v12}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Lcom/tnkfactory/framework/vo/ValueObject;)V

    goto :goto_2

    :cond_6
    move-object/from16 p2, v3

    goto/16 :goto_0
.end method
