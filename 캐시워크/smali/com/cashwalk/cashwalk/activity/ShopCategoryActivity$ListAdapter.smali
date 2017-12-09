.class Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShopCategoryActivity.java"

# interfaces
.implements Lde/halfbit/pinnedsection/PinnedSectionListView$PinnedSectionListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private brandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopItem;",
            ">;"
        }
    .end annotation
.end field

.field private li:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopItem;>;"
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->ctx:Landroid/content/Context;

    .line 186
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->li:Landroid/view/LayoutInflater;

    .line 187
    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->brandMap:Ljava/util/HashMap;

    .line 189
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->generateDataSet()V

    .line 190
    return-void
.end method

.method private generateDataSet()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, "lastSection":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    .line 292
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    if-nez v3, :cond_1

    .line 293
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;-><init>()V

    .line 294
    .local v0, "add":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    iget-object v4, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    iput-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 295
    iput v8, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->type:I

    .line 296
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 299
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->brandMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v4, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;-><init>()V

    .line 302
    .restart local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    iget-object v4, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    iput-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 303
    iput v8, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->type:I

    .line 304
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 307
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->brandMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 310
    .end local v0    # "add":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 212
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->type:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 219
    if-nez p2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->li:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b1

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 221
    new-instance v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;)V

    .line 223
    .local v1, "vh":Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;
    const v2, 0x7f100411

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->root:Landroid/widget/RelativeLayout;

    .line 224
    const v2, 0x7f100418

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->content:Landroid/widget/LinearLayout;

    .line 225
    const v2, 0x7f100410

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    .line 226
    const v2, 0x7f10008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 227
    const v2, 0x7f100093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f100200

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    .line 229
    const v2, 0x7f100201

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    .line 238
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 239
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_1
    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-object p2

    .line 233
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;
    goto :goto_0

    .line 244
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    :cond_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->section:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0201c1

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 248
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->brand:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    const v5, 0x7f090233

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x2

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    const/4 v0, 0x1

    .line 273
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(Ljava/lang/String;)V
    .locals 3
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->brandMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->brandMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, "position":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lde/halfbit/pinnedsection/PinnedSectionListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/halfbit/pinnedsection/PinnedSectionListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
