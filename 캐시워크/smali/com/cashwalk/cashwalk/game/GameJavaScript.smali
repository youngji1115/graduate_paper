.class public Lcom/cashwalk/cashwalk/game/GameJavaScript;
.super Ljava/lang/Object;
.source "GameJavaScript.java"


# instance fields
.field private mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public setOnJavascriptListener(Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cashwalk/cashwalk/game/GameJavaScript;->mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    .line 15
    return-void
.end method

.method public test()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/GameJavaScript;->mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/GameJavaScript;->mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    invoke-interface {v0}, Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;->onTest()V

    .line 29
    :cond_0
    return-void
.end method

.method public test(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/GameJavaScript;->mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/cashwalk/cashwalk/game/GameJavaScript;->mGameJavaScriptListener:Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/game/GameJavaScriptListener;->onTest(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
