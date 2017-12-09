.class Lcom/cashwalk/cashwalk/activity/TOSActivity$5;
.super Ljava/lang/Object;
.source "TOSActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 101
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 105
    return-void
.end method
