.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1e

    .line 423
    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {v8, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 424
    .local v8, "pd":Landroid/app/ProgressDialog;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v2, 0x7f0902b9

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "NICKNAME"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 428
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/PasteEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->val$body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_2

    .line 435
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->val$body:Ljava/lang/String;

    .line 441
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "STEPBET_ID"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->val$body:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1900(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/location/Location;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    move-result-object v6

    new-instance v7, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;

    invoke-direct {v7, p0, v8}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;Landroid/app/ProgressDialog;)V

    invoke-static/range {v0 .. v7}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/model/OGTag;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v9

    .line 476
    .local v9, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 477
    return-void

    .line 437
    .end local v9    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->val$body:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
