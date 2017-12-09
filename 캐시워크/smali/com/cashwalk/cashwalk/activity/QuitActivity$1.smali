.class Lcom/cashwalk/cashwalk/activity/QuitActivity$1;
.super Ljava/lang/Object;
.source "QuitActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/QuitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$000(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$000(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, -0x102

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$000(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$000(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x73000102

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
