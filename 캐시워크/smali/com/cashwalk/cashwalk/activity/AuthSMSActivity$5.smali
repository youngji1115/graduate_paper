.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;
.super Ljava/lang/Object;
.source "AuthSMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setListener()V
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
    .line 173
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$300(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$400(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;Ljava/lang/String;)V

    .line 177
    return-void
.end method
