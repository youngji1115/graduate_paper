.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;
.super Ljava/lang/Object;
.source "TimelineListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

.field final synthetic val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field final synthetic val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

.field final synthetic val$tempPostion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;ILcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput p3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$tempPostion:I

    iput-object p4, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$300(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineLike(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 225
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 226
    return-void
.end method
