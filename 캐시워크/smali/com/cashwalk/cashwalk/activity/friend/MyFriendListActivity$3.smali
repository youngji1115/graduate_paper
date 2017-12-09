.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 228
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_0
    :goto_0
    return v3

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    goto :goto_0
.end method
