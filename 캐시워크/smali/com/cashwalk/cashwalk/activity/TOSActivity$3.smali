.class Lcom/cashwalk/cashwalk/activity/TOSActivity$3;
.super Ljava/lang/Object;
.source "TOSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TOSActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://docs.google.com/document/d/1gccy2ta-qplk6azbvdU9RE72L_T9JqSK-ALkc1d3M_Q/pub"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
