.class public Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field btn_cancel_add_friend:Landroid/widget/Button;

.field btn_recevie_add_friend:Landroid/widget/Button;

.field iv_recommend_type:Landroid/widget/ImageView;

.field iv_user_profile_img:Landroid/widget/ImageView;

.field rl_add_friend:Landroid/widget/RelativeLayout;

.field rl_default_item:Landroid/widget/RelativeLayout;

.field tv_user_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 180
    const v0, 0x7f100308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f100305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    .line 182
    const v0, 0x7f100304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    .line 183
    const v0, 0x7f100306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f100307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    .line 185
    const v0, 0x7f10030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    .line 186
    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_recevie_add_friend:Landroid/widget/Button;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
