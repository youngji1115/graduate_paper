.class Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;
.super Ljava/lang/Object;
.source "CustomWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;->this$0:Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$5;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 65
    return-void
.end method
