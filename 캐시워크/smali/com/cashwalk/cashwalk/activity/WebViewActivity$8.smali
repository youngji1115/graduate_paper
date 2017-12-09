.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


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
    .line 176
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$600(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Lcom/cashwalk/cashwalk/util/ObservableWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$702(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$702(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$600(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Lcom/cashwalk/cashwalk/util/ObservableWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://m.search.naver.com/search.naver?query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$700(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$702(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$600(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Lcom/cashwalk/cashwalk/util/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ObservableWebView;->goBack()V

    .line 187
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0, p2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$202(Lcom/cashwalk/cashwalk/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$500(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    goto :goto_0
.end method
