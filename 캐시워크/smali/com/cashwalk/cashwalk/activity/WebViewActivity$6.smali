.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$6;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$100(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    .line 134
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
