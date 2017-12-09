.class public Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdNativeAdHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;
    }
.end annotation


# instance fields
.field adPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field admob_ad_key:Ljava/lang/String;

.field app_name:Ljava/lang/String;

.field container_admob_express:Landroid/view/ViewGroup;

.field context:Landroid/content/Context;

.field facebookAd:Lcom/facebook/ads/NativeAd;

.field facebook_ad_key:Ljava/lang/String;

.field imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

.field ivImage:Landroid/widget/ImageView;

.field ivLogo:Landroid/widget/ImageView;

.field nativeAdMedia:Lcom/facebook/ads/MediaView;

.field onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

.field progressView:Landroid/widget/ProgressBar;

.field tvBody:Landroid/widget/TextView;

.field tvCallToAction:Landroid/widget/TextView;

.field tvEtc:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field view_ad_choice:Landroid/view/ViewGroup;

.field view_container:Landroid/widget/LinearLayout;

.field view_root:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app_name"    # Ljava/lang/String;
    .param p4, "facebook_ad_key"    # Ljava/lang/String;
    .param p5, "admob_ad_key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->initField(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V

    .line 66
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->initView()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app_name"    # Ljava/lang/String;
    .param p4, "facebook_ad_key"    # Ljava/lang/String;
    .param p5, "admob_ad_key"    # Ljava/lang/String;
    .param p6, "imageProvider"    # Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->initField(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V

    .line 102
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->initView()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onLoadAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;
    .param p1, "x1"    # Lcom/tnkfactory/ad/NativeAdItem;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->bindTnkAD(Lcom/tnkfactory/ad/NativeAdItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;
    .param p1, "x1"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->bindFacebookAD(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method private bindFacebookAD(Lcom/facebook/ads/Ad;)V
    .locals 5
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    const/16 v3, 0x8

    .line 465
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    if-eq v2, p1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 498
    :goto_0
    return-void

    .line 470
    :cond_0
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V

    .line 472
    .local v1, "myNativeAd":Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setLogoUrl(Ljava/lang/String;)V

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setName(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 479
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setImageUrl(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->nativeAdMedia:Lcom/facebook/ads/MediaView;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setVisibility(I)V

    .line 483
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setBody(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setEtc(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->bindNativeAd(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;)V

    .line 489
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->nativeAdMedia:Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 491
    new-instance v0, Lcom/facebook/ads/AdChoicesView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 492
    .local v0, "adChoicesView":Lcom/facebook/ads/AdChoicesView;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_ad_choice:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 495
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    goto :goto_0
.end method

.method private bindNativeAd(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;)V
    .locals 10
    .param p1, "myNativeAd"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 503
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "logoUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    if-nez v6, :cond_1

    .line 506
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lcom/cashwalk/cashwalk/util/ImageUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 513
    :goto_0
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getName()Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->app_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \uad11\uace0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    :cond_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "imageUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    if-nez v6, :cond_2

    .line 523
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivImage:Landroid/widget/ImageView;

    invoke-static {v6, v3}, Lcom/cashwalk/cashwalk/util/ImageUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 530
    :goto_1
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "body":Ljava/lang/String;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvBody:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getEtc()Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "etc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 537
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvEtc:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :goto_2
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "callToAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 546
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvCallToAction:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    :goto_3
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 556
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 557
    return-void

    .line 508
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "callToAction":Ljava/lang/String;
    .end local v2    # "etc":Ljava/lang/String;
    .end local v3    # "imageUrl":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-interface {v6, v7, v4}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;->onProvideImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .restart local v3    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivImage:Landroid/widget/ImageView;

    invoke-interface {v6, v7, v3}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;->onProvideImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 539
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v2    # "etc":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvEtc:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvEtc:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 548
    .restart local v1    # "callToAction":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvCallToAction:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvCallToAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private bindTnkAD(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 2
    .param p1, "adItem"    # Lcom/tnkfactory/ad/NativeAdItem;

    .prologue
    .line 452
    new-instance v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V

    .line 454
    .local v0, "myNativeAd":Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;
    invoke-virtual {p1}, Lcom/tnkfactory/ad/NativeAdItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setLogoUrl(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Lcom/tnkfactory/ad/NativeAdItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setName(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/tnkfactory/ad/NativeAdItem;->getCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setImageUrl(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/tnkfactory/ad/NativeAdItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;->setBody(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->bindNativeAd(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$MyNativeAd;)V

    .line 460
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Lcom/tnkfactory/ad/NativeAdItem;->attachLayout(Landroid/view/ViewGroup;)V

    .line 461
    return-void
.end method

.method private initField(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_name"    # Ljava/lang/String;
    .param p3, "facebook_ad_key"    # Ljava/lang/String;
    .param p4, "admob_ad_key"    # Ljava/lang/String;
    .param p5, "imageProvider"    # Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->app_name:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebook_ad_key:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->admob_ad_key:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    .line 75
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivLogo:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvName:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvBody:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/MediaView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->nativeAdMedia:Lcom/facebook/ads/MediaView;

    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->ivImage:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvEtc:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->tvCallToAction:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_ad_choice:Landroid/view/ViewGroup;

    .line 97
    return-void
.end method

.method private loadAdmobExpressAD()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    new-instance v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "admobExpressAdView":Lcom/google/android/gms/ads/NativeExpressAdView;
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 209
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V

    .line 215
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 250
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    new-instance v2, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/google/android/gms/ads/NativeExpressAdView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method private loadFacebookAD()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->isSkipFacebookAd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK NATIVE AD]Error: Facebook app not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v0, "Facebook app not installed"

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onLoadAdError(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebook_ad_key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    .line 412
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 447
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    goto :goto_0
.end method

.method private loadTnkAD()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    const-string v1, "__tnk_cpc__"

    const/4 v2, 0x2

    new-instance v3, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/TnkSession;->prepareNativeAd(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/NativeAdListener;)Lcom/tnkfactory/ad/NativeAdItem;

    .line 335
    return-void
.end method

.method private onLoadAdError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->adPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->selectAd()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_root:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectAd()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_ad_choice:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->adPriorityList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    .local v0, "adPriority":I
    packed-switch v0, :pswitch_data_0

    .line 184
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const-string v2, "You have to select priority type ADMOB or FACEBOOK"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onError(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadFacebookAD()V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAdmobExpressAD()V

    goto :goto_0

    .line 181
    :pswitch_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadTnkAD()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public loadAD(ILcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V
    .locals 5
    .param p1, "adPriority"    # I
    .param p2, "onNativeAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 125
    new-array v0, v4, [Ljava/lang/Integer;

    .line 126
    .local v0, "tempAdPriorityList":[Ljava/lang/Integer;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    if-ne p1, v3, :cond_0

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 132
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAD([Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V

    .line 133
    return-void

    .line 130
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public loadAD(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V
    .locals 2
    .param p1, "tempAdPriorityList"    # Ljava/util/ArrayList;
    .param p2, "onNativeAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .prologue
    .line 148
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    const-string v1, "You have to select priority type ADMOB/FACEBOOK/TNK"

    invoke-interface {p2, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onError(Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->adPriorityList:Ljava/util/ArrayList;

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->selectAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAD([Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V
    .locals 2
    .param p1, "tempAdPriorityList"    # [Ljava/lang/Integer;
    .param p2, "onNativeAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    const-string v1, "You have to select priority type ADMOB/FACEBOOK/TNK"

    invoke-interface {p2, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onError(Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v0, "resultTempAdPriorityList":Ljava/util/ArrayList;
    invoke-virtual {p0, v0, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAD(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V

    goto :goto_0
.end method

.method public loadAdmobAD(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V
    .locals 1
    .param p1, "onNativeAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .prologue
    .line 121
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAD(ILcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V

    .line 122
    return-void
.end method

.method public loadFacebookAD(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V
    .locals 1
    .param p1, "onNativeAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAD(ILcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->nativeAdMedia:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->nativeAdMedia:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->facebookAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 114
    :cond_1
    return-void
.end method
