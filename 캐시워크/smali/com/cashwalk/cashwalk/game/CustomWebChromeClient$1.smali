.class Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;
.super Ljava/lang/Object;
.source "CustomWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
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
    .line 21
    iput-object p1, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;->this$0:Lcom/cashwalk/cashwalk/game/CustomWebChromeClient;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/CustomWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 26
    return-void
.end method
