.class public Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotiSettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field private iv_app_icon:Landroid/widget/ImageView;

.field private sw_app:Landroid/support/v7/widget/SwitchCompat;

.field private tv_app_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    const v0, 0x7f10040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f10040c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->tv_app_name:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->sw_app:Landroid/support/v7/widget/SwitchCompat;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->tv_app_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->sw_app:Landroid/support/v7/widget/SwitchCompat;

    return-object v0
.end method
