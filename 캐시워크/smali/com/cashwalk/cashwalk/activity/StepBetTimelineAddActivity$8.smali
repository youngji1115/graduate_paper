.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/cashwalk/cashwalk/util/PasteEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 292
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Lcom/cashwalk/cashwalk/util/network/model/OGTag;)Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    .line 294
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1402(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 297
    :cond_0
    return-void
.end method
