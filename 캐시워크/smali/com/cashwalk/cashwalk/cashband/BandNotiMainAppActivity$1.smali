.class Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;
.super Ljava/lang/Object;
.source "BandNotiMainAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    const-class v3, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;->overridePendingTransition(II)V

    .line 97
    return-void
.end method
