.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CouponActivity.java"

# interfaces
.implements Lde/halfbit/pinnedsection/PinnedSectionListView$PinnedSectionListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CouponListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;Ljava/util/ArrayList;)V
    .locals 2
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    .line 207
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->generateDataSet()V

    .line 226
    return-void
.end method

.method private generateDataSet()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "dirty":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 351
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    .line 353
    .local v3, "item":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    if-nez v2, :cond_1

    .line 354
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/Coupon;-><init>()V

    .line 355
    .local v0, "add":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    iput-boolean v6, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    .line 356
    iput v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->type:I

    .line 357
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    .end local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 360
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/Coupon;-><init>()V

    .line 361
    .restart local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    iput-boolean v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    .line 362
    iput v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->type:I

    .line 363
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    const/4 v1, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .end local v3    # "item":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 246
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->type:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0f0092

    const/16 v8, 0x8

    const/4 v5, 0x0

    const v7, 0x7f0f0093

    const v6, 0x7f0f0091

    .line 253
    if-nez p2, :cond_0

    .line 254
    new-instance v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/activity/CouponActivity$1;)V

    .line 255
    .local v1, "vh":Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    const v2, 0x7f100410

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f100411

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->root:Landroid/widget/RelativeLayout;

    .line 259
    const v2, 0x7f100093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f100200

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    .line 261
    const v2, 0x7f10027b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->expire:Landroid/widget/TextView;

    .line 262
    const v2, 0x7f10008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 263
    const v2, 0x7f100413

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    .line 265
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    .line 272
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 273
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    iget-boolean v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v4, 0x7f0901ff

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_1
    return-object p2

    .line 267
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;
    goto :goto_0

    .line 278
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    :cond_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v4, 0x7f0901fd

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 281
    :cond_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->expire:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lorg/joda/time/DateTime;

    iget-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->expire:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v5, 0x7f0902e4

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->status:I

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Ljp/wasabeef/picasso/transformations/GrayscaleTransformation;

    invoke-direct {v3}, Ljp/wasabeef/picasso/transformations/GrayscaleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 290
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v4, 0x7f0902eb

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->expire:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    new-instance v2, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$3;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 302
    :cond_3
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->status:I

    const/16 v3, 0xfa7

    if-ne v2, v3, :cond_4

    .line 303
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Ljp/wasabeef/picasso/transformations/GrayscaleTransformation;

    invoke-direct {v3}, Ljp/wasabeef/picasso/transformations/GrayscaleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 304
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v4, 0x7f0901f7

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->expire:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    new-instance v2, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$4;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 317
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 318
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    const v4, 0x7f0901fe

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->use:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->expire:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    new-instance v2, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$5;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/util/network/model/Coupon;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x2

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    const/4 v0, 0x1

    .line 345
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
