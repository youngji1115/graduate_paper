.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->addOGTypeMemo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 604
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 608
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 609
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    const-string v7, "meta[property^=og:]"

    invoke-virtual {v0, v7}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 610
    .local v2, "ogTags":Lorg/jsoup/select/Elements;
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 611
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/OGTag;-><init>()V

    .line 617
    .local v4, "ret":Lcom/cashwalk/cashwalk/util/network/model/OGTag;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 618
    invoke-virtual {v2, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 620
    .local v5, "tag":Lorg/jsoup/nodes/Element;
    const-string v7, "property"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "text":Ljava/lang/String;
    const-string v7, "og:url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 622
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogUrl:Ljava/lang/String;

    .line 617
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 623
    :cond_2
    const-string v7, "og:image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 624
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogImageUrl:Ljava/lang/String;

    goto :goto_2

    .line 625
    :cond_3
    const-string v7, "og:description"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 626
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    goto :goto_2

    .line 627
    :cond_4
    const-string v7, "og:title"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 628
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    goto :goto_2

    .line 633
    .end local v5    # "tag":Lorg/jsoup/nodes/Element;
    .end local v6    # "text":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### \ucd94\ucd9c => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### \ucd94\ucd9c => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### \ucd94\ucd9c => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### \ucd94\ucd9c => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 638
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 639
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iget-object v3, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogImageUrl:Ljava/lang/String;

    .line 641
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 642
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    new-instance v8, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v8}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 649
    :goto_3
    iget-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 650
    const-string v7, ""

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    .line 653
    :cond_6
    iget-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 654
    const-string v7, ""

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    .line 657
    :cond_7
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Lcom/cashwalk/cashwalk/util/network/model/OGTag;)Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    .line 658
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$2100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$2200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 645
    :cond_8
    const-string v7, ""

    iput-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogImageUrl:Ljava/lang/String;

    .line 646
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 661
    .end local v3    # "path":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
