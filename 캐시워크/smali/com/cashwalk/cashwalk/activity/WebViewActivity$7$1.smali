.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$1;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$100(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    .line 150
    return-void
.end method
