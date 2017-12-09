.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseShopItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$002(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    .line 96
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$600(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v4, 0x7f09014b

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v3

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->validity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v4, 0x7f090138

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$700(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$800(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
