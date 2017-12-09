.class public Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;
.super Landroid/support/v4/app/Fragment;
.source "StepBetTimelineFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;


# static fields
.field public static selectedIndex:I

.field public static selectedIndexItemId:Ljava/lang/String;


# instance fields
.field private fab_add_post:Lcom/melnykov/fab/FloatingActionButton;

.field private lastTimelineId:Ljava/lang/String;

.field private likeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mTimelineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

.field private pref:Landroid/content/SharedPreferences;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private rl_error:Landroid/widget/RelativeLayout;

.field private rl_more_loding:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->likeList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->lastTimelineId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mIsLoading:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->rl_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->lastTimelineId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->lastTimelineId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->setList()V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->updateList()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->rl_more_loding:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;-><init>()V

    .line 59
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;
    return-object v0
.end method

.method private setList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 253
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 254
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 255
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 256
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 258
    new-instance v3, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .line 259
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v3, p0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;)V

    .line 260
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 261
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 263
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;

    invoke-direct {v4, p0, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 282
    sget v1, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 283
    .local v1, "lastPostion":I
    sget-object v3, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    sget-object v4, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    move v1, v0

    .line 291
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 292
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->notifyDataSetChanged()V

    .line 293
    return-void

    .line 284
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method


# virtual methods
.method public fetchData(Ljava/lang/String;)V
    .locals 4
    .param p1, "afterId"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->rl_more_loding:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V

    invoke-static {v1, p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStepBetTimeline(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 246
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 248
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->pref:Landroid/content/SharedPreferences;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    const v1, 0x7f040096

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "v":Landroid/view/View;
    sput v3, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 74
    sput-object v4, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    .line 75
    iput-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->lastTimelineId:Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    .line 78
    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 79
    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 80
    const v1, 0x7f1001de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->rl_error:Landroid/widget/RelativeLayout;

    .line 81
    const v1, 0x7f1003cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/melnykov/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->fab_add_post:Lcom/melnykov/fab/FloatingActionButton;

    .line 82
    const v1, 0x7f1003ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->rl_more_loding:Landroid/widget/RelativeLayout;

    .line 84
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 92
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->fab_add_post:Lcom/melnykov/fab/FloatingActionButton;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V

    invoke-virtual {v1, v2}, Lcom/melnykov/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->fab_add_post:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/melnykov/fab/FloatingActionButton;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v4, v1}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refresh(ZLjava/lang/String;Z)V

    .line 103
    return-object v0
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .param p3, "position"    # I

    .prologue
    .line 108
    iget-boolean v1, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isNotice:Z

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    sput-object v1, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    .line 110
    sput p3, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v2, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 123
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "item"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "likes"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refresh(ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "delay"    # Z
    .param p2, "afterId"    # Ljava/lang/String;
    .param p3, "reset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p3, :cond_0

    .line 142
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 143
    sput-object v1, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->lastTimelineId:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    .line 146
    const/4 p2, 0x0

    .line 148
    :cond_0
    invoke-virtual {p0, p2}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->fetchData(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setScrollTop()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 155
    return-void
.end method

.method public updateLike(Ljava/lang/String;I)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "commentCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    if-eqz p1, :cond_3

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uc544\uc774\ub514 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput p2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    .line 168
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-boolean v3, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 170
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 179
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineListAdapter:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->notifyDataSetChanged()V

    .line 183
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 172
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-boolean v4, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 173
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->mTimelineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refresh(ZLjava/lang/String;Z)V

    goto :goto_2
.end method
