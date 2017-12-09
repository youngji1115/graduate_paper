.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 260
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 266
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$500(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    .line 267
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$600(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Lcom/cashwalk/cashwalk/util/ObservableWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->requestFocus()Z

    .line 268
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
