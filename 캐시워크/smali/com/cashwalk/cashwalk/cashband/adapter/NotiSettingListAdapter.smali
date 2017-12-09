.class public Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NotiSettingListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;,
        Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private isOtherActivityList:Z

.field private listener:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->isOtherActivityList:Z

    .line 37
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mContext:Landroid/content/Context;

    .line 39
    instance-of v0, p1, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->isOtherActivityList:Z

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 64
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$000(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$100(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->isOtherActivityList:Z

    if-eqz v2, :cond_0

    .line 76
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$200(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 77
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$200(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v5

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    iget v2, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 78
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$200(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    invoke-static {p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;->access$200(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    move v2, v4

    .line 77
    goto :goto_0

    .line 82
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "bool"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 98
    .local v0, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->listener:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;->onChange(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    .line 101
    .end local v0    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_0
    return-void

    .line 98
    .restart local v0    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400aa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->mList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public setOnCheckedChanged(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;)V
    .locals 0
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->listener:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$OnCheckedChanged;

    .line 120
    return-void
.end method
