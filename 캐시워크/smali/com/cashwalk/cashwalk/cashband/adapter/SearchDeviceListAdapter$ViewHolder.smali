.class public Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

.field private tv_band_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->this$0:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    .line 86
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    const v0, 0x7f10040f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->tv_band_name:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->tv_band_name:Landroid/widget/TextView;

    return-object v0
.end method
