.class Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;
.super Ljava/lang/Object;
.source "KakaoWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;->this$1:Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient;

    iput-object p2, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity$KakaoWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 306
    return-void
.end method
