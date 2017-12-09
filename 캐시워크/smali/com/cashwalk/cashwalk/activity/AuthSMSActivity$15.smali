.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;
.super Landroid/content/BroadcastReceiver;
.source "AuthSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setSmsReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 421
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 437
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 425
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v4, "pdus"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 426
    .local v2, "pdusObj":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 430
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 431
    .local v3, "smsMessages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 432
    aget-object v4, v2, v1

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v3, v1

    .line 433
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;Ljava/lang/String;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;->abortBroadcast()V

    goto :goto_0
.end method
