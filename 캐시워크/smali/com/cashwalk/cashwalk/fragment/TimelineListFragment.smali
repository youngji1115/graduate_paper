.class public Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
.super Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;
.source "TimelineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private isMine:Z

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isMine:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isMine:Z

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
    .locals 2

    .prologue
    .line 52
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isMine:Z

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setAdapter(Z)V

    .line 93
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isMine:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->onAttach(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->ctx:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->pref:Landroid/content/SharedPreferences;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 78
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 85
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 132
    invoke-super/range {p0 .. p5}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 133
    return-void
.end method

.method public setAdapter(Z)V
    .locals 2
    .param p1, "isMine"    # Z

    .prologue
    .line 105
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V

    invoke-static {p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getTimeline(ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 127
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 128
    return-void
.end method

.method public setType(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isMine:Z

    .line 60
    return-void
.end method
