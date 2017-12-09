.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/MyPageActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    new-instance v0, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 265
    .local v0, "contactsDBHelper":Lcom/cashwalk/cashwalk/util/ContactsDBHelper;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->clear()V

    .line 266
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_CONTACTS_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$300(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    const v3, 0x7f09016a

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 269
    return-void
.end method
