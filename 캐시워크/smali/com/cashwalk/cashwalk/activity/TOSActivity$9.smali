.class Lcom/cashwalk/cashwalk/activity/TOSActivity$9;
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

.field final synthetic val$check1:Landroid/widget/CheckBox;

.field final synthetic val$check2:Landroid/widget/CheckBox;

.field final synthetic val$check3:Landroid/widget/CheckBox;

.field final synthetic val$check4:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check3:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check4:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check3:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;->val$check4:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :cond_0
    return-void
.end method
