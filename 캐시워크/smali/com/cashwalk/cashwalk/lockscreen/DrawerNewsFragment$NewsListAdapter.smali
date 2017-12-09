.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    .line 387
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 407
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 414
    if-nez p2, :cond_0

    .line 415
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;)V

    .line 416
    .local v1, "vh":Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 418
    const v2, 0x7f100093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;->title:Landroid/widget/TextView;

    .line 420
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/News;

    .line 427
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    iget-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/News;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;Lcom/cashwalk/cashwalk/util/network/model/News;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-object p2

    .line 422
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$NewsViewHolder;
    goto :goto_0
.end method
