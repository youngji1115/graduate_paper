.class Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog$1;
.super Ljava/lang/Object;
.source "KakaoNotiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->dismiss()V

    .line 34
    return-void
.end method
