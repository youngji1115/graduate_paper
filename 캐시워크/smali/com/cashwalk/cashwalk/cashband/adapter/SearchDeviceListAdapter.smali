.class public Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchDeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public addItem(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "item"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v1, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p1, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;->access$000(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 57
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;->onItemClick(Landroid/bluetooth/BluetoothDevice;)V

    .line 71
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public removeAllItem()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter$OnItemClickListener;

    .line 76
    return-void
.end method
