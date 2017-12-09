.class public Lcom/cashwalk/cashwalk/util/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getOnScrollChangedCallback()Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ObservableWebView;->mOnScrollChangedCallback:Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 25
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ObservableWebView;->mOnScrollChangedCallback:Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ObservableWebView;->mOnScrollChangedCallback:Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;

    invoke-interface {v0, p1, p2}, Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;->onScroll(II)V

    .line 26
    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;)V
    .locals 0
    .param p1, "onScrollChangedCallback"    # Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ObservableWebView;->mOnScrollChangedCallback:Lcom/cashwalk/cashwalk/util/ObservableWebView$OnScrollChangedCallback;

    .line 34
    return-void
.end method
