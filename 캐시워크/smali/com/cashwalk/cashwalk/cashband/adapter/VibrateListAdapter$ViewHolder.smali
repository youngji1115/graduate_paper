.class public Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VibrateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field private rb_mode_select:Landroid/widget/RadioButton;

.field private tv_mode_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    const v0, 0x7f10041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->tv_mode_name:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f100424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->rb_mode_select:Landroid/widget/RadioButton;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->rb_mode_select:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->tv_mode_name:Landroid/widget/TextView;

    return-object v0
.end method
