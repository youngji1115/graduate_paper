.class public Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SportModeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final SELECT_MAX_COUNT:I

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/SportMode;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->SELECT_MAX_COUNT:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    .line 31
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 51
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/SportMode;

    iget-boolean v2, v4, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    .line 52
    .local v2, "isSelectMode":Z
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/SportMode;

    iget-object v0, v4, Lcom/cashwalk/cashwalk/model/SportMode;->baseDrawableName:Ljava/lang/String;

    .line 53
    .local v0, "baseDrawableName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, "res":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;->iv_mode_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v4, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;->iv_mode_icon:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v4, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;->iv_mode_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v5, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;->tv_mode_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/SportMode;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/model/SportMode;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 56
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/SportMode;

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/SportMode;

    iput-boolean v2, v0, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    .line 72
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->notifyDataSetChanged()V

    .line 83
    :goto_1
    return-void

    .line 74
    :cond_0
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\ucd5c\ub300 4\uac1c\uae4c\uc9c0 \uc120\ud0dd \uac00\ub2a5\ud569\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/SportMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    .line 79
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/SportMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/SportMode;>;"
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public setSelectCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->mSelectCount:I

    .line 36
    return-void
.end method
