.class Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;
.super Ljava/lang/Object;
.source "BandSleepActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    const-class v3, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->startActivity(Landroid/content/Intent;)V

    .line 457
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->overridePendingTransition(II)V

    .line 458
    const/4 v0, 0x1

    return v0
.end method
