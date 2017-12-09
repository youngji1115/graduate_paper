.class public Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LottoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field li_default_item:Landroid/widget/LinearLayout;

.field people:Landroid/widget/TextView;

.field price:Landroid/widget/TextView;

.field subtitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field winnerLayout:Landroid/widget/LinearLayout;

.field winnerProfile:Landroid/widget/ImageView;

.field winnerText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    const v0, 0x7f100315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f100200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f10028c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->people:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerLayout:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f100317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerProfile:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f100318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerText:Landroid/widget/TextView;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
