.class public Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShopListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field li_default_item:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    const v0, 0x7f100315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
