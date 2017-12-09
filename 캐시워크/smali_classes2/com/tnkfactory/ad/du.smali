.class Lcom/tnkfactory/ad/du;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/dq;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/du;->a:Lcom/tnkfactory/ad/dq;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/dv;

    invoke-direct {v1, p0, p4}, Lcom/tnkfactory/ad/dv;-><init>(Lcom/tnkfactory/ad/du;Landroid/webkit/JsResult;)V

    invoke-static {v0, v2, p3, v2, v1}, Lcom/tnkfactory/ad/ii;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/tnkfactory/ad/dw;

    invoke-direct {v4, p0, p4}, Lcom/tnkfactory/ad/dw;-><init>(Lcom/tnkfactory/ad/du;Landroid/webkit/JsResult;)V

    new-instance v6, Lcom/tnkfactory/ad/dx;

    invoke-direct {v6, p0, p4}, Lcom/tnkfactory/ad/dx;-><init>(Lcom/tnkfactory/ad/du;Landroid/webkit/JsResult;)V

    move-object v2, p3

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/ii;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    return v0
.end method
