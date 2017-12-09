.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$502(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Z)Z

    .line 245
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 247
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\ub0b4\uc704\uce58 \ube44\uacf5\uac1c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$900(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 251
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$502(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Z)Z

    .line 256
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 259
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const-string/jumbo v1, "\ucc3e\ub294\uc911..."

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .line 266
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .line 267
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 268
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1102(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    goto/16 :goto_0
.end method
