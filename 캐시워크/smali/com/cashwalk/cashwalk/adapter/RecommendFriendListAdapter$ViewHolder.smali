.class public Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecommendFriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field btn_cancel_add_friend:Landroid/widget/Button;

.field iv_recommend_type:Landroid/widget/ImageView;

.field iv_user_profile_img:Landroid/widget/ImageView;

.field rl_add_friend:Landroid/widget/RelativeLayout;

.field rl_default_item:Landroid/widget/RelativeLayout;

.field rl_delete_friend:Landroid/widget/RelativeLayout;

.field tv_user_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 209
    const v0, 0x7f100308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f100305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    .line 211
    const v0, 0x7f100319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    .line 212
    const v0, 0x7f100304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    .line 213
    const v0, 0x7f100306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 214
    const v0, 0x7f100307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f10030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
