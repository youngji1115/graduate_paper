.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$1;
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
    .line 147
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    return-void
.end method
