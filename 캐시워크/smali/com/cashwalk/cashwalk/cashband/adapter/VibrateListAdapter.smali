.class public Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VibrateListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private lastCheckedPosition:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/model/VibrateMode;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;

.field private mSelectedItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedItemName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->lastCheckedPosition:I

    .line 29
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mSelectedItemName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/VibrateMode;

    .line 47
    .local v0, "mode":Lcom/cashwalk/cashwalk/model/VibrateMode;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mSelectedItemName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mSelectedItemName:Ljava/lang/String;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->access$000(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mSelectedItemName:Ljava/lang/String;

    .line 54
    :goto_0
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->access$100(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, v0, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->access$000(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 56
    iget-object v1, p1, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p1, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;->access$000(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;)Landroid/widget/RadioButton;

    move-result-object v3

    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->lastCheckedPosition:I

    if-ne p2, v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->lastCheckedPosition:I

    .line 68
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->notifyDataSetChanged()V

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/VibrateMode;

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;->onItemClick(Lcom/cashwalk/cashwalk/model/VibrateMode;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/model/VibrateMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/model/VibrateMode;>;"
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mList:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;

    .line 75
    return-void
.end method
