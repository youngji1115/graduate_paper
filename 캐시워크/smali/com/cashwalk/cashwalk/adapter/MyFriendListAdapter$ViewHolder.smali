.class public Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyFriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_user_profile_img:Landroid/widget/ImageView;

.field rl_default_item:Landroid/widget/RelativeLayout;

.field rl_delete_friend:Landroid/widget/RelativeLayout;

.field tv_user_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    const v0, 0x7f100308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f100305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f100319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f100306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
