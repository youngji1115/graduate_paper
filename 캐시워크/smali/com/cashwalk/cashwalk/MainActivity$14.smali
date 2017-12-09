.class Lcom/cashwalk/cashwalk/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CASHWALK_MAIN_VIRAL_STYPE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CASHWALK_MAIN_VIRAL_STYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$1100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$1200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$1300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$1400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ViralActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 530
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$14;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/MainActivity;->overridePendingTransition(II)V

    .line 531
    return-void
.end method
