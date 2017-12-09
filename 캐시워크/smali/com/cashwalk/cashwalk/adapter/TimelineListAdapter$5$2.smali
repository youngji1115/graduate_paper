.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;
.super Ljava/lang/Object;
.source "TimelineListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;Landroid/content/DialogInterface;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineReport(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 265
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 266
    return-void
.end method
