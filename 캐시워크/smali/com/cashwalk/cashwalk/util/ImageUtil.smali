.class public Lcom/cashwalk/cashwalk/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWebUrl(Landroid/widget/ImageView;Ljava/lang/String;ILcom/bumptech/glide/request/RequestListener;)Z
    .locals 5
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "err_resId"    # I
    .param p3, "callback"    # Lcom/bumptech/glide/request/RequestListener;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 122
    invoke-virtual {v3, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {v3, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 142
    :goto_0
    return v2

    .line 128
    :cond_0
    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 133
    invoke-virtual {v3, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v3, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static loadImage(Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "res_id"    # I
    .param p2, "callback"    # Lcom/bumptech/glide/request/RequestListener;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 25
    return-void
.end method

.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 7
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 18
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ImageUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;ZZIILcom/bumptech/glide/request/RequestListener;)V

    .line 19
    return-void
.end method

.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;ZZIILcom/bumptech/glide/request/RequestListener;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Z
    .param p3, "centerCrop"    # Z
    .param p4, "holder_resId"    # I
    .param p5, "err_resId"    # I
    .param p6, "callback"    # Lcom/bumptech/glide/request/RequestListener;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 37
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    :cond_2
    :try_start_0
    invoke-static {p0, p1, p5, p6}, Lcom/cashwalk/cashwalk/util/ImageUtil;->checkWebUrl(Landroid/widget/ImageView;Ljava/lang/String;ILcom/bumptech/glide/request/RequestListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 59
    .local v1, "request":Lcom/bumptech/glide/DrawableTypeRequest;
    if-lez p4, :cond_3

    .line 60
    invoke-virtual {v1, p4}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 65
    :cond_3
    if-lez p5, :cond_4

    .line 66
    invoke-virtual {v1, p5}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 69
    :cond_4
    if-eqz p2, :cond_5

    .line 70
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 73
    :cond_5
    if-eqz p3, :cond_6

    .line 74
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 80
    :cond_6
    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 82
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/bumptech/glide/GifTypeRequest;->dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 86
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 87
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v2, p0}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 94
    :goto_1
    if-eqz p6, :cond_7

    .line 95
    invoke-virtual {v1, p6}, Lcom/bumptech/glide/DrawableTypeRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 98
    :cond_7
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 99
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 104
    .end local v1    # "request":Lcom/bumptech/glide/DrawableTypeRequest;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 90
    .restart local v1    # "request":Lcom/bumptech/glide/DrawableTypeRequest;
    :cond_8
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
