.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$2;
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
    .line 153
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$100(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    .line 158
    return-void
.end method
